# echo "Start"
# touch ri.txt
# touch ri_ana.txt
# python Zx.py ri.png ri.txt ri_img.png
# python analyse.py ri.txt ri_ana.txt
# echo "Result : "
# python cat.py ri_ana.txt
# echo "Finish"

echo "Start"
cd ..
echo "ri.txt" $1
echo "ri_ana.txt" $2 

echo "ri.png" $3
echo "ri_img.png" $4

touch $1
touch $2

python Zx.py $3 $1 rice/trash/$4
cp rice/trash$4 rice/static/images$4
python analyse.py $1 $2
echo "Result : "
python cat.py $2
echo "Finish"
