export DIR=/mnt/raid1_12TB/wang/EDGAR_2013_factor
export nh3dir=$DIR/nh3
export nh3outdir=/mnt/raid1_12TB/wang/EDGAR_2013_sum/nh3
ln -sf $nh3dir/emi_* $nh3outdir
for f in $nh3outdir/emi_*; do 
echo $f
export emi_name=${f%.*}
export emi_name=${emi_name#*nh3/}
echo $emi_name
ncap2 -O -o $nh3outdir/$emi_name.nc -s 'lat=float(lat);lon=float(lon)' $f 
done
for f in $nh3outdir/emi_*; do
echo $f
export emi_name=${f%.*}
export emi_name=${emi_name#*nh3/}
ncks -A -o $nh3outdir/EDGARv4.3.2nh3.nc  $f
done
ncap2 -h -A -o $nh3outdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_nh3__monthly.nc -s 'emi_sum[$time,$lat,$lon]=0.F;' $nh3outdir/EDGARv4.3.2nh3.nc 
for f in $nh3outdir/emi_*; do 
export emi_name=${f%.*}
export emi_name=${emi_name#*nh3/}
echo 'doing add on '$emi_name''
ncap2 -h -A -o $nh3outdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_nh3__monthly.nc -s 'emi_sum=emi_sum+'$emi_name'' $nh3outdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_nh3__monthly.nc 
done


