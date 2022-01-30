export DIR=/mnt/raid1_12TB/wang/EDGAR_2013_factor
export noxdir=$DIR/nox
export noxoutdir=/mnt/raid1_12TB/wang/EDGAR_2013_sum/nox
ln -sf $noxdir/emi_* $noxoutdir
for f in $noxoutdir/emi_*; do 
echo $f
export emi_name=${f%.*}
export emi_name=${emi_name#*nox/}
echo $emi_name
ncap2 -O -o $noxoutdir/$emi_name.nc -s 'lat=float(lat);lon=float(lon)' $f 
done
for f in $noxoutdir/emi_*; do
echo $f
export emi_name=${f%.*}
export emi_name=${emi_name#*nox/}
ncks -A -o $noxoutdir/EDGARv4.3.2nox.nc  $f
done
ncap2 -h -A -o $noxoutdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_nox__monthly.nc -s 'emi_sum[$time,$lat,$lon]=0.F;' $noxoutdir/EDGARv4.3.2nox.nc 
for f in $noxoutdir/emi_*; do 
export emi_name=${f%.*}
export emi_name=${emi_name#*nox/}
echo 'doing add on '$emi_name''
ncap2 -h -A -o $noxoutdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_nox__monthly.nc -s 'emi_sum=emi_sum+'$emi_name'' $noxoutdir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_nox__monthly.nc 
done


