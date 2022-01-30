export DIR=/mnt/raid1_12TB/wang/EDGAR_2013_factor
export ch4dir=$DIR/ch4
export ch4outdir=/mnt/raid1_12TB/wang/EDGAR_2013_sum/ch4
ln -sf $ch4dir/emi_* $ch4outdir
for f in $ch4outdir/emi_*; do 
echo $f
export emi_name=${f%.*}
export emi_name=${emi_name#*ch4/}
echo $emi_name
ncap2 -O -o $ch4outdir/$emi_name.nc -s 'lat=float(lat);lon=float(lon)' $f 
done
for f in $ch4outdir/emi_*; do
echo $f
export emi_name=${f%.*}
export emi_name=${emi_name#*ch4/}
ncks -A -o $ch4outdir/EDGARv4.3.2ch4.nc  $f
done
ncap2 -h -A -o $ch4outdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_ch4__monthly.nc -s 'emi_sum[$time,$lat,$lon]=0.F;' $ch4outdir/EDGARv4.3.2ch4.nc 
for f in $ch4outdir/emi_*; do 
export emi_name=${f%.*}
export emi_name=${emi_name#*ch4/}
echo 'doing add on '$emi_name''
ncap2 -h -A -o $ch4outdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_ch4__monthly.nc -s 'emi_sum=emi_sum+'$emi_name'' $ch4outdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_ch4__monthly.nc 
done


