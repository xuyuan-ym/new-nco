export DIR=/mnt/raid1_12TB/wang/edgars/vocssectors
for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25   
do 
find $DIR/voc$i/industry -type f -name '*.nc' -exec cp -sf {} /mnt/raid1_12TB/wang/2013/vocs/industry \;
find $DIR/voc$i/residential -type f -name '*.nc' -exec cp -sf {} /mnt/raid1_12TB/wang/2013/vocs/residential \;
done
