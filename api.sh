# echo "Start"
# touch ri.txt
# touch ri_ana.txt
# python Zx.py ri.png ri.txt ri_img.png
# python analyse.py ri.txt ri_ana.txt
# echo "Result : "
# python cat.py ri_ana.txt
# echo "Finish"

# $1 input image
echo "Start"
echo "ri.txt" result/1.txt
echo "ri_ana.txt" result/2.txt

echo "ri.png" $1
echo "ri_img.png" result/api_result.png

touch result/1.txt
touch result/2.txt
touch result/api_result.txt

python Zx.py $1 result/1.txt result/api_result.png
python analyse.py result/1.txt result/2.txt
echo "Result : "
python cat.py result/2.txt
echo "Finish"
