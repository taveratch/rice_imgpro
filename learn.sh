echo "Start"
echo "01"
touch img-db/01_bacterial_blight/01_001.txt
python Zx.py img-db/01_bacterial_blight/01_001.txt
python analyse.py img-db/01_bacterial_blight/01_001.txt  img-db/01_bacterial_blight/01_001_ana.txt
touch img-db/01_bacterial_blight/01_002.txt
python Zx.py img-db/01_bacterial_blight/01_002.png  img-db/01_bacterial_blight/01_002.txt  img-db/01_bacterial_blight/01_002_P.png
touch img-db/01_bacterial_blight/01_002_ana.txt
python analyse.py img-db/01_bacterial_blight/01_002.txt  img-db/01_bacterial_blight/01_002_ana.txt 
touch img-db/01_bacterial_blight/01_003.txt
python Zx.py img-db/01_bacterial_blight/01_003.png  img-db/01_bacterial_blight/01_003.txt  img-db/01_bacterial_blight/01_003_P.png
touch img-db/01_bacterial_blight/01_003_ana.txt
python analyse.py img-db/01_bacterial_blight/01_003.txt  img-db/01_bacterial_blight/01_003_ana.txt
touch img-db/01_bacterial_blight/01_004.txt
python Zx.py img-db/01_bacterial_blight/01_004.png  img-db/01_bacterial_blight/01_004.txt  img-db/01_bacterial_blight/01_004_P.png 
touch img-db/01_bacterial_blight/01_004_ana.txt
python analyse.py img-db/01_bacterial_blight/01_004.txt  img-db/01_bacterial_blight/01_004_ana.txt
touch img-db/01_bacterial_blight/01_005.txt
python Zx.py img-db/01_bacterial_blight/01_005.png  img-db/01_bacterial_blight/01_005.txt  img-db/01_bacterial_blight/01_005_P.png  
touch img-db/01_bacterial_blight/01_005_ana.txt
python analyse.py img-db/01_bacterial_blight/01_005.txt  img-db/01_bacterial_blight/01_005_ana.txt
touch img-db/01_bacterial_blight/01_006.txt
python Zx.py img-db/01_bacterial_blight/01_006.png  img-db/01_bacterial_blight/01_006.txt  img-db/01_bacterial_blight/01_006_P.png 
touch img-db/01_bacterial_blight/01_006_ana.txt
python analyse.py img-db/01_bacterial_blight/01_006.txt  img-db/01_bacterial_blight/01_006_ana.txt
echo "Summarize 01 . . ."
cd img-db
cd 01_bacterial_blight
touch 01_sum.txt
python ../../summarize.py 01_sum.txt 01_001_ana.txt 01_002_ana.txt 01_003_ana.txt 01_004_ana.txt 01_005_ana.txt 01_006_ana.txt
cd ..
cd ..
echo "02"
touch img-db/02_bacterial_leaf_streak/02_001.txt
python Zx.py img-db/02_bacterial_leaf_streak/02_001.png  img-db/02_bacterial_leaf_streak/02_001.txt  img-db/02_bacterial_leaf_streak/02_001_P.png 
touch img-db/02_bacterial_leaf_streak/02_001_ana.txt
python analyse.py img-db/02_bacterial_leaf_streak/02_001.txt  img-db/02_bacterial_leaf_streak/02_001_ana.txt
touch img-db/02_bacterial_leaf_streak/02_002.txt
python Zx.py img-db/02_bacterial_leaf_streak/02_002.png  img-db/02_bacterial_leaf_streak/02_002.txt  img-db/02_bacterial_leaf_streak/02_002_P.png 
touch img-db/02_bacterial_leaf_streak/02_002_ana.txt
python analyse.py img-db/02_bacterial_leaf_streak/02_002.txt  img-db/02_bacterial_leaf_streak/02_002_ana.txt
touch img-db/02_bacterial_leaf_streak/02_003_ana.txt
python analyse.py img-db/02_bacterial_leaf_streak/02_003.txt  img-db/02_bacterial_leaf_streak/02_003_ana.txt
touch img-db/02_bacterial_leaf_streak/02_003.txt
python Zx.py img-db/02_bacterial_leaf_streak/02_003.png  img-db/02_bacterial_leaf_streak/02_003.txt  img-db/02_bacterial_leaf_streak/02_003_P.png 
echo "Summarize 02 . . ."
cd img-db
cd 02_bacterial_leaf_streak
touch 02_sum.txt
python ../../summarize.py 02_sum.txt 02_001_ana.txt 02_002_ana.txt 02_003_ana.txt 
cd ..
cd ..
echo "03"
touch img-db/03_bacterial_sheath_brown_rot/03_001.txt
python Zx.py img-db/03_bacterial_sheath_brown_rot/03_001.png  img-db/03_bacterial_sheath_brown_rot/03_001.txt  img-db/03_bacterial_sheath_brown_rot/03_001_P.png 
touch img-db/03_bacterial_sheath_brown_rot/03_001_ana.txt
python analyse.py img-db/03_bacterial_sheath_brown_rot/03_001.txt  img-db/03_bacterial_sheath_brown_rot/03_001_ana.txt
touch img-db/03_bacterial_sheath_brown_rot/03_002.txt
python Zx.py img-db/03_bacterial_sheath_brown_rot/03_002.png  img-db/03_bacterial_sheath_brown_rot/03_002.txt  img-db/03_bacterial_sheath_brown_rot/03_002_P.png 
touch img-db/03_bacterial_sheath_brown_rot/03_002_ana.txt
python analyse.py img-db/03_bacterial_sheath_brown_rot/03_002.txt  img-db/03_bacterial_sheath_brown_rot/03_002_ana.txt
echo "Summarize 03 . . ."
cd img-db
cd 03_bacterial_sheath_brown_rot
touch 03_sum.txt
python ../../summarize.py 03_sum.txt 03_001_ana.txt 03_002_ana.txt
cd ..
cd ..
echo "04"
touch img-db/04_bakanae/04_001.txt
python Zx.py img-db/04_bakanae/04_001.png  img-db/04_bakanae/04_001.txt  img-db/04_bakanae/04_001_P.png 
touch img-db/04_bakanae/04_001_ana.txt
python analyse.py img-db/04_bakanae/04_001.txt  img-db/04_bakanae/04_001_ana.txt
echo "Summarize 04 . . ."
cd img-db
cd 04_bakanae
touch 04_sum.txt
python ../../summarize.py 04_sum.txt 04_001_ana.txt 
cd ..
cd ..
echo "05"
touch img-db/05_blast_leaf_and_collar/05_001.txt
python Zx.py img-db/05_blast_leaf_and_collar/05_001.png  img-db/05_blast_leaf_and_collar/05_001.txt  img-db/05_blast_leaf_and_collar/05_001_P.png 
touch img-db/05_blast_leaf_and_collar/05_001_ana.txt
python analyse.py img-db/05_blast_leaf_and_collar/05_001.txt  img-db/05_blast_leaf_and_collar/05_001_ana.txt
touch img-db/05_blast_leaf_and_collar/05_002.txt
python Zx.py img-db/05_blast_leaf_and_collar/05_002.png  img-db/05_blast_leaf_and_collar/05_002.txt  img-db/05_blast_leaf_and_collar/05_002_P.png 
touch img-db/05_blast_leaf_and_collar/05_002_ana.txt
python analyse.py img-db/05_blast_leaf_and_collar/05_002.txt  img-db/05_blast_leaf_and_collar/05_002_ana.txt
touch img-db/05_blast_leaf_and_collar/05_003.txt
python Zx.py img-db/05_blast_leaf_and_collar/05_003.png  img-db/05_blast_leaf_and_collar/05_003.txt  img-db/05_blast_leaf_and_collar/05_003_P.png 
touch img-db/05_blast_leaf_and_collar/05_003_ana.txt
python analyse.py img-db/05_blast_leaf_and_collar/05_003.txt  img-db/05_blast_leaf_and_collar/05_003_ana.txt
touch img-db/05_blast_leaf_and_collar/05_004.txt
python Zx.py img-db/05_blast_leaf_and_collar/05_004.png  img-db/05_blast_leaf_and_collar/05_004.txt  img-db/05_blast_leaf_and_collar/05_004_P.png 
touch img-db/05_blast_leaf_and_collar/05_004_ana.txt
python analyse.py img-db/05_blast_leaf_and_collar/05_004.txt  img-db/05_blast_leaf_and_collar/05_004_ana.txt
touch img-db/05_blast_leaf_and_collar/05_005.txt
python Zx.py img-db/05_blast_leaf_and_collar/05_005.png  img-db/05_blast_leaf_and_collar/05_005.txt  img-db/05_blast_leaf_and_collar/05_005_P.png 
touch img-db/05_blast_leaf_and_collar/05_005_ana.txt
python analyse.py img-db/05_blast_leaf_and_collar/05_005.txt  img-db/05_blast_leaf_and_collar/05_005_ana.txt
echo "Summarize 05 . . ."
cd img-db
cd 05_blast_leaf_and_collar
touch 05_sum.txt
python ../../summarize.py 05_sum.txt 05_001_ana.txt 05_002_ana.txt  05_003_ana.txt  05_004_ana.txt  05_005_ana.txt 
cd ..
cd ..
echo "06"
touch img-db/06_blast_node_and_neck/06_001.txt
python Zx.py img-db/06_blast_node_and_neck/06_001.png  img-db/06_blast_node_and_neck/06_001.txt  img-db/06_blast_node_and_neck/06_001_P.png 
touch img-db/06_blast_node_and_neck/06_001_ana.txt
python analyse.py img-db/06_blast_node_and_neck/06_001.txt  img-db/06_blast_node_and_neck/06_001_ana.txt
touch img-db/06_blast_node_and_neck/06_002.txt
python Zx.py img-db/06_blast_node_and_neck/06_002.png  img-db/06_blast_node_and_neck/06_002.txt  img-db/06_blast_node_and_neck/06_002_P.png
touch img-db/06_blast_node_and_neck/06_002_ana.txt
python analyse.py img-db/06_blast_node_and_neck/06_002.txt  img-db/06_blast_node_and_neck/06_002_ana.txt
touch img-db/06_blast_node_and_neck/06_003.txt
python Zx.py img-db/06_blast_node_and_neck/06_003.png  img-db/06_blast_node_and_neck/06_003.txt  img-db/06_blast_node_and_neck/06_003_P.png
touch img-db/06_blast_node_and_neck/06_003_ana.txt
python analyse.py img-db/06_blast_node_and_neck/06_003.txt  img-db/06_blast_node_and_neck/06_003_ana.txt
touch img-db/06_blast_node_and_neck/06_004.txt
python Zx.py img-db/06_blast_node_and_neck/06_004.png  img-db/06_blast_node_and_neck/06_004.txt  img-db/06_blast_node_and_neck/06_004_P.png
touch img-db/06_blast_node_and_neck/06_004_ana.txt
python analyse.py img-db/06_blast_node_and_neck/06_004.txt  img-db/06_blast_node_and_neck/06_004_ana.txt
echo "Summarize 06 . . ."
cd img-db
cd 06_blast_node_and_neck
touch 06_sum.txt
python ../../summarize.py 06_sum.txt 06_001_ana.txt 06_002_ana.txt  06_003_ana.txt  06_004_ana.txt  
cd ..
cd ..
echo "07"
touch img-db/07_brown_spot/07_001.txt
python Zx.py img-db/07_brown_spot/07_001.png  img-db/07_brown_spot/07_001.txt  img-db/07_brown_spot/07_001_P.png
touch img-db/07_brown_spot/07_001_ana.txt
python analyse.py img-db/07_brown_spot/07_001.txt  img-db/07_brown_spot/07_001_ana.txt
touch img-db/07_brown_spot/07_002.txt
python Zx.py img-db/07_brown_spot/07_002.png  img-db/07_brown_spot/07_002.txt  img-db/07_brown_spot/07_002_P.png
touch img-db/07_brown_spot/07_002_ana.txt
python analyse.py img-db/07_brown_spot/07_002.txt  img-db/07_brown_spot/07_002_ana.txt
touch img-db/07_brown_spot/07_003.txt
python Zx.py img-db/07_brown_spot/07_003.png  img-db/07_brown_spot/07_003.txt  img-db/07_brown_spot/07_003_P.png
touch img-db/07_brown_spot/07_003_ana.txt
python analyse.py img-db/07_brown_spot/07_003.txt  img-db/07_brown_spot/07_003_ana.txt
echo "Summarize 07 . . ."
cd img-db
cd 07_brown_spot
touch 07_sum.txt
python ../../summarize.py 07_sum.txt 07_001_ana.txt 07_002_ana.txt  07_003_ana.txt 
cd ..
cd ..
echo "08"
touch img-db/08_false_smut/08_001.txt
python Zx.py img-db/08_false_smut/08_001.png  img-db/08_false_smut/08_001.txt  img-db/08_false_smut/08_001_P.png
touch img-db/08_false_smut/08_001_ana.txt
python analyse.py img-db/08_false_smut/08_001.txt  img-db/08_false_smut/08_001_ana.txt
touch img-db/08_false_smut/08_002.txt
python Zx.py img-db/08_false_smut/08_002.png  img-db/08_false_smut/08_002.txt  img-db/08_false_smut/08_002_P.png
touch img-db/08_false_smut/08_002_ana.txt
python analyse.py img-db/08_false_smut/08_002.txt  img-db/08_false_smut/08_002_ana.txt
echo "Summarize 08 . . ."
cd img-db
cd 08_false_smut
touch 08_sum.txt
python ../../summarize.py 08_sum.txt 08_001_ana.txt 08_002_ana.txt  
cd ..
cd ..
echo "09"
touch img-db/09_leaf_scald/09_001.txt
python Zx.py img-db/09_leaf_scald/09_001.png  img-db/09_leaf_scald/09_001.txt  img-db/09_leaf_scald/09_001_P.png
touch img-db/09_leaf_scald/09_001_ana.txt
python analyse.py img-db/09_leaf_scald/09_001.txt  img-db/09_leaf_scald/09_001_ana.txt
echo "Summarize 09 . . ."
cd img-db
cd 09_leaf_scald
touch 09_sum.txt
python ../../summarize.py 09_sum.txt 09_001_ana.txt 
cd ..
cd ..
echo "10"
touch img-db/10_narrow_brown_spot/10_001.txt
python Zx.py img-db/10_narrow_brown_spot/10_001.png  img-db/10_narrow_brown_spot/10_001.txt  img-db/10_narrow_brown_spot/10_001_P.png
touch img-db/10_narrow_brown_spot/10_001_ana.txt
python analyse.py img-db/10_narrow_brown_spot/10_001.txt  img-db/10_narrow_brown_spot/10_001_ana.txt
touch img-db/10_narrow_brown_spot/10_002.txt
python Zx.py img-db/10_narrow_brown_spot/10_002.png  img-db/10_narrow_brown_spot/10_002.txt  img-db/10_narrow_brown_spot/10_002_P.png
touch img-db/10_narrow_brown_spot/10_002_ana.txt
python analyse.py img-db/10_narrow_brown_spot/10_002.txt  img-db/10_narrow_brown_spot/10_002_ana.txt
echo "Summarize 10 . . ."
cd img-db
cd 10_narrow_brown_spot
touch 10_sum.txt
python ../../summarize.py 10_sum.txt 10_001_ana.txt 10_002_ana.txt
cd ..
cd ..
echo "11"
touch img-db/11_red_stripe/11_001.txt
python Zx.py img-db/11_red_stripe/11_001.png  img-db/11_red_stripe/11_001.txt  img-db/11_red_stripe/11_001_P.png
touch img-db/11_red_stripe/11_001_ana.txt
python analyse.py img-db/11_red_stripe/11_001.txt  img-db/11_red_stripe/11_001_ana.txt
echo "Summarize 11 . . ."
cd img-db
cd 11_red_stripe
touch 11_sum.txt
python ../../summarize.py 11_sum.txt 11_001_ana.txt
cd ..
cd ..
echo "12"
touch img-db/12_rice_grassy_stunt/12_001.txt
python Zx.py img-db/12_rice_grassy_stunt/12_001.png  img-db/12_rice_grassy_stunt/12_001.txt  img-db/12_rice_grassy_stunt/12_001_P.png
touch img-db/12_rice_grassy_stunt/12_001_ana.txt
python analyse.py img-db/12_rice_grassy_stunt/12_001.txt  img-db/12_rice_grassy_stunt/12_001_ana.txt
echo "Summarize 12 . . ."
cd img-db
cd 12_rice_grassy_stunt
touch 12_sum.txt
python ../../summarize.py 12_sum.txt 12_001_ana.txt
cd ..
cd ..
ehco "13"
touch img-db/13_rice_ragged_stunt/13_001.txt
python Zx.py img-db/13_rice_ragged_stunt/13_001.png  img-db/13_rice_ragged_stunt/13_001.txt  img-db/13_rice_ragged_stunt/13_001_P.png
touch img-db/13_rice_ragged_stunt/13_001_ana.txt
python analyse.py img-db/13_rice_ragged_stunt/13_001.txt  img-db/13_rice_ragged_stunt/13_001_ana.txt
touch img-db/13_rice_ragged_stunt/13_002.txt
python Zx.py img-db/13_rice_ragged_stunt/13_002.png  img-db/13_rice_ragged_stunt/13_002.txt  img-db/13_rice_ragged_stunt/13_002_P.png
touch img-db/13_rice_ragged_stunt/13_002_ana.txt
python analyse.py img-db/13_rice_ragged_stunt/13_002.txt  img-db/13_rice_ragged_stunt/13_002_ana.txt
echo "Summarize 13 . . ."
cd img-db
cd 13_rice_ragged_stunt
touch 13_sum.txt
python ../../summarize.py 13_sum.txt 13_001_ana.txt 13_002_ana.txt
cd ..
cd ..
echo "14"
touch img-db/14_rice_stripe_virus_disease/14_001.txt
python Zx.py img-db/14_rice_stripe_virus_disease/14_001.png  img-db/14_rice_stripe_virus_disease/14_001.txt  img-db/14_rice_stripe_virus_disease/14_001_P.png
touch img-db/14_rice_stripe_virus_disease/14_001_ana.txt
python analyse.py img-db/14_rice_stripe_virus_disease/14_001.txt  img-db/14_rice_stripe_virus_disease/14_001_ana.txt
echo "Summarize 14 . . ."
cd img-db
cd 14_rice_stripe_virus_disease
touch 14_sum.txt
python ../../summarize.py 14_sum.txt 14_001_ana.txt 
cd ..
cd ..
echo "15"
touch img-db/15_rice_yellow_mottle_virus/15_001.txt
python Zx.py img-db/15_rice_yellow_mottle_virus/15_001.png  img-db/15_rice_yellow_mottle_virus/15_001.txt  img-db/15_rice_yellow_mottle_virus/15_001_P.png
touch img-db/15_rice_yellow_mottle_virus/15_001_ana.txt
python analyse.py img-db/15_rice_yellow_mottle_virus/15_001.txt  img-db/15_rice_yellow_mottle_virus/15_001_ana.txt
echo "Summarize 15 . . ."
cd img-db
cd 15_rice_yellow_mottle_virus
touch 15_sum.txt
python ../../summarize.py 15_sum.txt 15_001_ana.txt 
cd ..
cd ..
echo "16"
touch img-db/16_sheath_blight/16_001.txt
python Zx.py img-db/16_sheath_blight/16_001.png  img-db/16_sheath_blight/16_001.txt  img-db/16_sheath_blight/16_001_P.png
touch img-db/16_sheath_blight/16_001_ana.txt
python analyse.py img-db/16_sheath_blight/16_001.txt  img-db/16_sheath_blight/16_001_ana.txt
touch img-db/16_sheath_blight/16_002.txt
python Zx.py img-db/16_sheath_blight/16_002.png  img-db/16_sheath_blight/16_002.txt  img-db/16_sheath_blight/16_002_P.png
touch img-db/16_sheath_blight/16_002_ana.txt
python analyse.py img-db/16_sheath_blight/16_002.txt  img-db/16_sheath_blight/16_002_ana.txt
echo "Summarize 16 . . ."
cd img-db
cd 16_sheath_blight
touch 16_sum.txt
python ../../summarize.py 16_sum.txt 16_001_ana.txt  16_002_ana.txt
cd ..
cd ..
echo "17"
touch img-db/17_sheath_rot/17_001.txt
python Zx.py img-db/17_sheath_rot/17_001.png  img-db/17_sheath_rot/17_001.txt  img-db/17_sheath_rot/17_001_P.png
touch img-db/17_sheath_rot/17_001_ana.txt
python analyse.py img-db/17_sheath_rot/17_001.txt  img-db/17_sheath_rot/17_001_ana.txt
touch img-db/17_sheath_rot/17_002.txt
python Zx.py img-db/17_sheath_rot/17_002.png  img-db/17_sheath_rot/17_002.txt  img-db/17_sheath_rot/17_002_P.png
touch img-db/17_sheath_rot/17_002_ana.txt
python analyse.py img-db/17_sheath_rot/17_002.txt  img-db/17_sheath_rot/17_002_ana.txt
touch img-db/17_sheath_rot/17_003.txt
python Zx.py img-db/17_sheath_rot/17_003.png  img-db/17_sheath_rot/17_003.txt  img-db/17_sheath_rot/17_003_P.png
touch img-db/17_sheath_rot/17_003_ana.txt
python analyse.py img-db/17_sheath_rot/17_003.txt  img-db/17_sheath_rot/17_003_ana.txt
touch img-db/17_sheath_rot/17_004.txt
python Zx.py img-db/17_sheath_rot/17_004.png  img-db/17_sheath_rot/17_004.txt  img-db/17_sheath_rot/17_004_P.png
touch img-db/17_sheath_rot/17_004_ana.txt
python analyse.py img-db/17_sheath_rot/17_004.txt  img-db/17_sheath_rot/17_004_ana.txt
echo "Summarize 17 . . ."
cd img-db
cd 17_sheath_rot
touch 17_sum.txt
python ../../summarize.py 17_sum.txt 17_001_ana.txt  17_002_ana.txt 17_003_ana.txt 17_004_ana.txt
cd ..
cd ..
echo "18"
touch img-db/18_stem_rot/18_001.txt
python Zx.py img-db/18_stem_rot/18_001.png  img-db/18_stem_rot/18_001.txt  img-db/18_stem_rot/18_001_P.png
touch img-db/18_stem_rot/18_001_ana.txt
python analyse.py img-db/18_stem_rot/18_001.txt  img-db/18_stem_rot/18_001_ana.txt
echo "Summarize 18 . . ."
cd img-db
cd 18_stem_rot
touch 18_sum.txt
python ../../summarize.py 18_sum.txt 18_001_ana.txt
cd ..
cd ..
echo "19"
touch img-db/19_tungroc/19_001.txt
python Zx.py img-db/19_tungroc/19_001.png  img-db/19_tungroc/19_001.txt  img-db/19_tungroc/19_001_P.png
touch img-db/19_tungroc/19_001_ana.txt
python analyse.py img-db/19_tungroc/19_001.txt  img-db/19_tungroc/19_001_ana.txt
touch img-db/19_tungroc/19_002.txt
python Zx.py img-db/19_tungroc/19_002.png  img-db/19_tungroc/19_002.txt  img-db/19_tungroc/19_002_P.png
touch img-db/19_tungroc/19_002_ana.txt
python analyse.py img-db/19_tungroc/19_002.txt  img-db/19_tungroc/19_002_ana.txt
touch img-db/19_tungroc/19_003.txt
python Zx.py img-db/19_tungroc/19_003.png  img-db/19_tungroc/19_003.txt  img-db/19_tungroc/19_003_P.png
touch img-db/19_tungroc/19_003_ana.txt
python analyse.py img-db/19_tungroc/19_003.txt  img-db/19_tungroc/19_003_ana.txt
echo "Summarize 19 . . ."
cd img-db
cd 19_tungroc
touch 19_sum.txt
python ../../summarize.py 19_sum.txt 19_001_ana.txt 19_002_ana.txt 19_003_ana.txt
cd ..
cd ..
echo "Finish"

#YARN = Yet Another Resource Negotiator 
# --> Resource Manager [ Master ]
# --> Node Manager [ Worker ]
#   - Application Master
#   - Container

# HADOOP --> HDFS, MAPREDUCE, YARN