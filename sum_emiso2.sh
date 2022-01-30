export DIR=/mnt/raid1_12TB/wang/EDGAR_2013_factor
export so2dir=$DIR/so2
export so2outdir=/mnt/raid1_12TB/wang/EDGAR_2013_sum/so2
ln -sf $so2dir/emi_* $so2outdir
for f in $so2outdir/emi_*; do 
echo $f
export emi_name=${f%.*}
export emi_name=${emi_name#*so2/}
echo $emi_name
ncap2 -O -o $so2outdir/$emi_name.nc -s 'lat=float(lat);lon=float(lon)' $f 
done
for f in $so2outdir/emi_*; do
echo $f
export emi_name=${f%.*}
export emi_name=${emi_name#*so2/}
ncks -A -o $so2outdir/EDGARv4.3.2so2.nc  $f
done
ncap2 -h -A -o $so2outdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc -s 'emi_sum[$time,$lat,$lon]=0.F;' $so2outdir/EDGARv4.3.2so2.nc 
for f in $so2outdir/emi_*; do 
export emi_name=${f%.*}
export emi_name=${emi_name#*so2/}
echo 'doing add on '$emi_name''
ncap2 -h -A -o $so2outdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc -s 'emi_sum=emi_sum+'$emi_name'' $so2outdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc 
done


