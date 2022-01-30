export DIR=/mnt/raid1_12TB/wang
export so2dir=$DIR/edgars/NOX
export so2inddir=$DIR/2013/industry
export so2resdir=$DIR/2013/residential
find $DIR -type d -name ${so2inddir#*2013/}
find $DIR -type d -name ${so2resdir#*2013/}
#industry for so2
ncks -O -h -c -o /mnt/raid1_12TB/wang/2013/so2/industry/emi_1A2origin.nc -v emi_1A2,lat,lon $so2dir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc
ncks -O -h -c -o /mnt/raid1_12TB/wang/2013/so2/industry/emi_2Aorigin.nc -v emi_2A,lat,lon $so2dir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc
ncks -O -h -c -o /mnt/raid1_12TB/wang/2013/so2/industry/emi_2Borigin.nc -v emi_2B,lat,lon $so2dir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc
ncks -O -h -c -o /mnt/raid1_12TB/wang/2013/so2/industry/emi_2C1a_2C1c_2C1d_2C1e_2C1f_2C2origin.nc -v emi_2C1a_2C1c_2C1d_2C1e_2C1f_2C2,lat,lon $so2dir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc
ncks -O -h -c -o /mnt/raid1_12TB/wang/2013/so2/industry/emi_2C3_2C4_2C5origin.nc -v emi_2C3_2C4_2C5,lat,lon $so2dir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc
ncks -O -h -c -o /mnt/raid1_12TB/wang/2013/so2/industry/emi_3origin.nc -v emi_3,lat,lon $so2dir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc
ncks -O -h -c -o /mnt/raid1_12TB/wang/2013/so2/industry/emi_2Dorigin.nc -v emi_2D,lat,lon $so2dir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc
ncks -O -h -c -o /mnt/raid1_12TB/wang/2013/so2/industry/emi_2Gorigin.nc -v emi_2G,lat,lon $so2dir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc

#residential for so2
ncks -O -h -c -o /mnt/raid1_12TB/wang/2013/so2/residential/emi_1A4origin.nc -v emi_1A4,lat,lon $so2dir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc
ncks -O -h -c -o /mnt/raid1_12TB/wang/2013/so2/residential/emi_4Forigin.nc -v emi_4F,lat,lon $so2dir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc
ncks -O -h -c -o /mnt/raid1_12TB/wang/2013/so2/residential/emi_6Corigin.nc -v emi_6C,lat,lon $so2dir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc
ncks -O -h -c -o /mnt/raid1_12TB/wang/2013/so2/residential/emi_4C_4D1_4D2_4D4origin.nc -v emi_4C_4D1_4D2_4D4,lat,lon $so2dir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc
ncks -O -h -c -o /mnt/raid1_12TB/wang/2013/so2/residential/emi_4Borigin.nc -v emi_4B,lat,lon $so2dir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc
ncks -O -h -c -o /mnt/raid1_12TB/wang/2013/so2/residential/emi_4Aorigin.nc -v emi_4A,lat,lon $so2dir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc
ncks -O -h -c -o /mnt/raid1_12TB/wang/2013/so2/residential/emi_6A_6Dorigin.nc -v emi_6A_6D,lat,lon $so2dir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc
ncks -O -h -c -o /mnt/raid1_12TB/wang/2013/so2/residential/emi_6Borigin.nc -v emi_6B,lat,lon $so2dir/EDGARv4.3.2-monthly_Glb_0.1x0.1_anthro_so2__monthly.nc
