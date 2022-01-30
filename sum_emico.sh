export DIR=/mnt/raid1_12TB/wang/EDGAR_2013_factor
export codir=$DIR/co
export cooutdir=/mnt/raid1_12TB/wang/EDGAR_2013_sum/co
ln -sf $codir/emi_* $cooutdir
for f in $cooutdir/emi_*; do 
echo $f
export emi_name=${f%.*}
export emi_name=${emi_name#*co/}
echo $emi_name
ncap2 -O -o $cooutdir/$emi_name.nc -s 'lat=float(lat);lon=float(lon)' $f 
done
for f in $cooutdir/emi_*; do
echo $f
export emi_name=${f%.*}
export emi_name=${emi_name#*co/}
ncks -A -o $cooutdir/EDGARv4.3.2co.nc  $f
done
ncap2 -h -A -o $cooutdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_co__monthly.nc -s 'emi_sum[$time,$lat,$lon]=0.F;' $cooutdir/EDGARv4.3.2co.nc 
for f in $cooutdir/emi_*; do 
export emi_name=${f%.*}
export emi_name=${emi_name#*co/}
echo 'doing add on '$emi_name''
ncap2 -h -A -o $cooutdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_co__monthly.nc -s 'emi_sum=emi_sum+'$emi_name'' $cooutdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_co__monthly.nc 
done


