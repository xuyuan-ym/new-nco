export DIR=/mnt/raid1_12TB/wang/EDGAR_2013_factor
export co2dir=$DIR/co2
export co2outdir=/mnt/raid1_12TB/wang/EDGAR_2013_sum/co2
ln -sf $co2dir/emi_* $co2outdir
for f in $co2outdir/emi_*; do 
echo $f
export emi_name=${f%.*}
export emi_name=${emi_name#*co2/}
echo $emi_name
ncap2 -O -o $co2outdir/$emi_name.nc -s 'lat=float(lat);lon=float(lon)' $f 
done
for f in $co2outdir/emi_*; do
echo $f
export emi_name=${f%.*}
export emi_name=${emi_name#*co2/}
ncks -A -o $co2outdir/EDGARv4.3.2co2.nc  $f
done
ncap2 -h -A -o $co2outdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_co2__monthly.nc -s 'emi_sum[$time,$lat,$lon]=0.F;' $co2outdir/EDGARv4.3.2co2.nc 
for f in $co2outdir/emi_*; do 
export emi_name=${f%.*}
export emi_name=${emi_name#*co2/}
echo 'doing add on '$emi_name''
ncap2 -h -A -o $co2outdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_co2__monthly.nc -s 'emi_sum=emi_sum+'$emi_name'' $co2outdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_co2__monthly.nc 
done


