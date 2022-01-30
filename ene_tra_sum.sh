export DIR=/mnt/raid1_12TB/wang/2013/so2
export enedir=`echo $DIR/energy`
export tradir=`echo $DIR/transport`
#find $enedir -type f -name 'emi_7A_*' -exec ln -sf {} /home/wang/nso2prc \;
#if [ ! -d /mnt/raid1_12TB/wang/EDGAR_2013_factor/so2 ] 
#then
#echo the dir do not exit create so2 dir
#mkdir /mnt/raid1_12TB/wang/EDGAR_2013_factor/so2
#fi
#energy
ncecat -O -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/so2/emi_7A.nc -u time $enedir/emi_7A*
ncecat -O -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/so2/emi_1B1a_1B2a1_1B2a2_1B2a3_1B2a4_1B2c.nc -u time $enedir/emi_1B1a_1B2a1_1B2a2_1B2a3_1B2a4_1B2c*
ncecat -O -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/so2/emi_1A1b_1A1c_1A5b1_1B1b_1B2a5_1B2a6_1B2b5_2C1b.nc -u time $enedir/emi_1A1b_1A1c_1A5b1_1B1b_1B2a5_1B2a6_1B2b5_2C1b*
ncecat -O -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/so2/emi_1A1a.nc -u time $enedir/emi_1A1a*
#transport 
ncecat -O -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/so2/emi_1A3a_CDS.nc -u time $tradir/emi_1A3a_CDS*

ncecat -O -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/so2/emi_1A3a_CRS.nc -u time $tradir/emi_1A3a_CRS*

ncecat -O -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/so2/emi_1A3a_LTO.nc -u time $tradir/emi_1A3a_LTO*

ncecat -O -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/so2/emi_1A3b.nc -u time $tradir/emi_1A3b*

ncecat -O -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/so2/emi_1A3c_1A3e.nc -u time $tradir/emi_1A3c_1A3e*
ncecat -O -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/so2/emi_1A3d_1C2.nc -u time $tradir/emi_1A3d_1C2*
