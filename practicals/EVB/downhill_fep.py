#! /usr/bin/env python

import sys

__description__ = \
"""
This simple script will rearange the lambda values
in the current directory so that sampling is downhill
from transistion state. All files that starts with 'md_' 
and 'eq' will be touched.

A file, typically a run.sh, must be present where the orignal
order of the md files are defined using the name convention
of Qgui (md_lambda1_lambda2.inp ---> md_0500_0500.inp)

Usage: python downhile_fep.py run.sh
"""

### EDITABLE REGION ####
#File to sample downhill from (TS):
downhill = 'md_0500_0500.inp'

#Submit Qdyn command in run script (run.sh):
look_for = 'mpirun qdynp'
########################


###NO EDIT REGION STARTS####
### SCRIPT STARTS HERE #####
eq = dict()
eq_count = 0

md = dict()
md_count = 0

mid_nr = False

try:
    runscript = sys.argv[1]
    print 'Using %s' % runscript
except:
    print 'no run script with files specified'
    print 'using default: run.sh'
    runscript = 'run.sh'

#Collect inptufiles from run script
with open(runscript, 'r') as runsh:
    for line in runsh:
        if look_for in line:
            inp = line.split()[2]
            if inp.startswith('md'):
                md_count += 1
                md[md_count] = inp
                print md_count
                print inp
            elif inp.startswith('eq'):
                eq_count += 1
                eq[eq_count] = inp
            if inp == downhill:
                mid_nr = md_count
              

#Write new run script with updated sequence of files
#and update restart files in MD input files
old_sh = open(runscript, 'r').readlines()
new_sh = open(runscript, 'w')
found_run = False

#Lambda 1 and lambda2 from downhill file name:
l1, l2 = downhill.split('.inp')[0].split('_')[1:3]
l1 = l1[0]+'.' + l1[1:]
l2 = l2[0]+'.' + l2[1:]

for line in old_sh:
    if look_for not in line:
        new_sh.write(line)
    else:
        if not found_run:
            for eqnr in sorted(eq):
                #Modify lambda in equilibration file:
                inp = eq[eqnr]
                old_inp = open(inp, 'r').readlines()
                new_inp = open(inp, 'w')
                found_lambdas = False
                for line in old_inp:
                    if not found_lambdas:
                        new_inp.write(line)
                    else:
                        new_inp.write('%s %s\n' % (l1, l2))
                        found_lambdas = False
                    if '[lambdas]' in line:
                        found_lambdas = True

                #Write run command to run script
                new_sh.write('%s %s > %s\n' % (look_for, inp, inp.split('.inp')[0]+'.log'))
 
            #Write lambda TS --> RSS
            for mdnr in range(mid_nr, 0, -1):
                inp = md[mdnr]
                if mdnr == mid_nr:
                    re_file = eq[max(eq.keys())].split('.')[0] + '.re'
                else:
                    re_file = md[mdnr + 1].split('.')[0] + '.re'
                old_inp = open(inp, 'r').readlines()
                new_inp = open(inp, 'w')
                for line in old_inp:
                    if 'restart' in line:
                        new_inp.write('restart                   %s\n' % re_file)
                    else:
                        new_inp.write(line)
                new_inp.close()

                new_sh.write('%s %s > %s\n' % (look_for, inp, inp.split('.inp')[0]+'.log'))
            
            #Write lambda TS --> PS
            for mdnr in range(mid_nr + 1, max(md.keys()) + 1):
                inp = md[mdnr]
                
                re_file = md[mdnr - 1].split('.')[0] + '.re'
                
                old_inp = open(inp, 'r').readlines()
                new_inp = open(inp, 'w')
                for line in old_inp:
                    if 'restart' in line:
                        new_inp.write('restart                   %s\n' % re_file)
                    else:
                        new_inp.write(line)
                new_inp.close()

                new_sh.write('%s %s > %s\n' % (look_for, inp, inp.split('.inp')[0]+'.log'))

            found_run = True
new_sh.close()
