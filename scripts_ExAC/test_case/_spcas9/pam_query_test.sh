#!/bin/bash

PAM_param="AGG,CGG,GGG,TGG,AAG,CAG,GAG,TAG"
f=Homo_sapiens_assembly19_21_27972000.gg
ff=gencode.v19.annotation_21_27972000.gff3
f_base=`basename $f`
fout=${f_base%.gg*}".spcas9.pq.csv"

qsub -P varicas -q short -o pam_query_test.o -e pam_query_test.e -b y -cwd -l h_vmem=3g python2.7 ../exac_genome-PAM_query_v0_2_1.py $f $ff $PAM_param $fout

# python2.7 ../exac_genome-PAM_query_v0_2_1.py $f $PAM_param $fout
