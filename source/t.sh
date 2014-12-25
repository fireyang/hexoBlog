for filename in 2006*
do
    t=${filename:0:10}
    echo $filename
    #echo $t
    sed -i /title.*/i'date: '$t' 00:00:00' $filename
    #sed '1 ittt' $filename
    #break
done
