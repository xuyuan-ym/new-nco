export DIR=/mnt/raid1_12TB/wang/2013/vocs
export inddir=$DIR/industry
export resdir=$DIR/residential
#industry
for i in {1..25}; do 
#2_3
ncecat -O -u time -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc$i/voc${i}_emi_2_3.nc $inddir/*voc${i}_*2_3* 
ncap2 -O -o  /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc${i}/voc${i}_2013_emi_2_3.nc -s 'emi_voc'$i'=1.270080372*emi_voc'$i'' /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc${i}/voc${i}_emi_2_3.nc  
rm /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc${i}/voc${i}_emi_2_3.nc
#1A2
ncecat -O -u time -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc$i/voc${i}_emi_1A2.nc $inddir/*voc${i}_*1A2* 
ncap2 -O -o  /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc${i}/voc${i}_2013_emi_1A2.nc -s 'emi_voc'$i'=1.268207982*emi_voc'$i'' /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc${i}/voc${i}_emi_1A2.nc  
rm /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc${i}/voc${i}_emi_1A2.nc
done 
#residential
for i in {1..25}; do
#1A4
ncecat -O -u time -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc$i/voc${i}_emi_1A4.nc $resdir/*voc${i}_*1A4*
ncap2 -O -o  /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc${i}/voc${i}_2013_emi_1A4.nc -s 'emi_voc'$i'=1.126988741*emi_voc'$i'' /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc${i}/voc${i}_emi_1A4.nc
rm /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc${i}/voc${i}_emi_1A4.nc
#6
ncecat -O -u time -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc$i/voc${i}_emi_6.nc $resdir/*voc${i}_*6*
ncap2 -O -o  /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc${i}/voc${i}_2013_emi_6.nc -s 'emi_voc'$i'=1.248450781*emi_voc'$i'' /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc${i}/voc${i}_emi_6.nc
rm /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc${i}/voc${i}_emi_6.nc
#4F
ncecat -O -u time -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc$i/voc${i}_emi_4F.nc $resdir/*voc${i}_*4F*
ncap2 -O -o  /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc${i}/voc${i}_2013_emi_4F.nc -s 'emi_voc'$i'=1.248450781*emi_voc'$i'' /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc${i}/voc${i}_emi_4F.nc
rm /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc${i}/voc${i}_emi_4F.nc
done


