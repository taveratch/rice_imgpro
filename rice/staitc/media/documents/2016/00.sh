# for i in `seq 1 12`
# do 
#   mkdir $i
# done

for i in `seq 1 12`
do
for j in `seq 1 31`
    do
    mkdir $i/$j
    done
done