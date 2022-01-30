export DIR=/mnt/raid1_12TB/wang/2013/co2
export inddir=`echo $DIR/industry`
export resdir=`echo $DIR/residential`
echo industry file :
find $inddir -type f -name "*.nc"
echo residential file :
find $resdir -type f -name "*.nc"
#mk co2 dir
if ! [ -d /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2 ] 
then
echo co2 do not exist make co2 dir !!!
mkdir /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2
fi
#all industry
ncap2 -O -v -s 'emi_1A2=1.268207982*emi_1A2' $inddir/emi_1A2origin.nc /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2/emi_1A2.nc
ncap2 -O -v -s 'emi_2B=1.48477766*emi_2B' $inddir/emi_2Borigin.nc /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2/emi_2B.nc
ncap2 -O -v -s 'emi_2C1a_2C1c_2C1d_2C1e_2C1f_2C2=1.196496628*emi_2C1a_2C1c_2C1d_2C1e_2C1f_2C2' $inddir/emi_2C1a_2C1c_2C1d_2C1e_2C1f_2C2origin.nc /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2/emi_2C1a_2C1c_2C1d_2C1e_2C1f_2C2.nc
ncap2 -O -v -s 'emi_2A=1.320691032*emi_2A' $inddir/emi_2Aorigin.nc /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2/emi_2A.nc
ncap2 -O -v -s 'emi_2C3_2C4_2C5=1.294039225*emi_2C3_2C4_2C5' $inddir/emi_2C3_2C4_2C5origin.nc /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2/emi_2C3_2C4_2C5.nc
ncap2 -O -v -s 'emi_2D=1.270080372*emi_2D' $inddir/emi_2Dorigin.nc /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2/emi_2D.nc
ncap2 -O -v -s 'emi_2G=1.444580973*emi_2G' $inddir/emi_2Gorigin.nc /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2/emi_2G.nc
ncap2 -O -v -s 'emi_3=1.48477766*emi_3' $inddir/emi_3origin.nc /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2/emi_3.nc
#all residential
ncap2 -O -v -s 'emi_1A4=1.126988741*emi_1A4' $resdir/emi_1A4origin.nc /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2/emi_1A4.nc
ncap2 -O -v -s 'emi_4A=1.248450781*emi_4A' $resdir/emi_4Aorigin.nc /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2/emi_4A.nc
ncap2 -O -v -s 'emi_4B=1.248450781*emi_4B' $resdir/emi_4Borigin.nc /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2/emi_4B.nc
ncap2 -O -v -s 'emi_4C_4D1_4D2_4D4=1.243542834*emi_4C_4D1_4D2_4D4' $resdir/emi_4C_4D1_4D2_4D4origin.nc /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2/emi_4C_4D1_4D2_4D4.nc
ncap2 -O -v -s 'emi_4F=1.248450781*emi_4F' $resdir/emi_4Forigin.nc /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2/emi_4F.nc
ncap2 -O -v -s 'emi_6A_6D=1.248450781*emi_6A_6D' $resdir/emi_6A_6Dorigin.nc /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2/emi_6A_6D.nc
ncap2 -O -v -s 'emi_6B=1.248450781*emi_6B' $resdir/emi_6Borigin.nc /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2/emi_6B.nc
ncap2 -O -v -s 'emi_6C=1.248450781*emi_6C' $resdir/emi_6Corigin.nc /mnt/raid1_12TB/wang/EDGAR_2013_factor/co2/emi_6C.nc
