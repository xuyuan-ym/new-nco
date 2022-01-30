for i in {1..25};do
 export DIR=/mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs
 export vocdir=$DIR/voc$i
 export vocoutdir=/mnt/raid1_12TB/wang/EDGAR_2013_sum/vocs/voc$i
 ln -sf $vocdir/*emi_* $vocoutdir
 for f in $vocoutdir/*emi_*; do 
# echo $f
 export emi_name_s=${f%.*}
 export emi_name=${emi_name_s#/mnt/raid1_12TB/wang/EDGAR_2013_sum/vocs/voc${i}/voc${i}_2013_}
 echo $emi_name
 ncap2 -O -o $vocoutdir/voc${i}_2013_$emi_name.nc -s 'lat=float(lat);lon=float(lon)' $f 
 ncap2 -O -o $vocoutdir/voc${i}_2013_$emi_name.nc -s ''$emi_name'[$time,$lat,$lon]=0.F;'$emi_name'=emi_voc'$i'' $vocoutdir/voc${i}_2013_$emi_name.nc
 ncks -O -o  $vocoutdir/voc${i}_2013_$emi_name.nc -x -v emi_voc$i $vocoutdir/voc${i}_2013_$emi_name.nc
 done
 for f in $vocoutdir/*emi_*; do
 export emi_name_s=${f%.*}
 export emi_name=${emi_name_s#/mnt/raid1_12TB/wang/EDGAR_2013_sum/vocs/voc${i}/voc${i}_2013_}
 echo $emi_name
 echo $f
 ncks -A -o $vocoutdir/EDGARv4.3.2voc.nc  $f
 done
 ncap2 -h -A -o $vocoutdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_voc${i}__monthly.nc -s 'emi_sum[$time,$lat,$lon]=0.F;' $vocoutdir/EDGARv4.3.2voc.nc 
 for f in $vocoutdir/*emi_*; do 
 export emi_name_s=${f%.*}
 export emi_name=${emi_name_s#/mnt/raid1_12TB/wang/EDGAR_2013_sum/vocs/voc${i}/voc${i}_2013_}
 echo 'doing add on '$emi_name''
 ncap2 -h -A -o $vocoutdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_voc${i}__monthly.nc -s 'emi_sum=emi_sum+'$emi_name'' $vocoutdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_voc${i}__monthly.nc 
 done
done

