export DIR=/mnt/raid1_12TB/wang/2013/vocs
export enedir=$DIR/energy
export tradir=$DIR/transport

#energy

for i in {1..25}; do 
#1A1
ncecat -O -u time -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc$i/voc${i}_2013_emi_1A1.nc $enedir/*voc${i}_*1A1* 
#7A
ncecat -O -u time -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc$i/voc${i}_2013_emi_7A.nc $enedir/*voc${i}_*7A*
done 
#1A1c_1A5b1_1B1b_1B2a6_1B2b5_2C1b
ncecat -O -u time -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc$i/voc${i}_2013_emi_1A1c_1A5b1_1B1b_1B2a6_1B2b5_2C1b.nc $enedir/*voc${i}_*1A1c_1A5b1_1B1b_1B2a6_1B2b5_2C1b*
#1A1b_1B2a5
ncecat -O -u time -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc$i/voc${i}_2013_emi_1A1b_1B2a5.nc $enedir/*voc${i}_*1A1b_1B2a5*
#1B1a_1B2a1_1B2a2_1B2a3_1B2a4_1B2c
ncecat -O -u time -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc$i/voc${i}_2013_emi_1B1a_1B2a1_1B2a2_1B2a3_1B2a4_1B2c.nc $enedir/*voc${i}_*1B1a_1B2a1_1B2a2_1B2a3_1B2a4_1B2c*

#residential
for i in {1..25}; do
#1A3a_CDS
ncecat -O -u time -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc$i/voc${i}_2013_emi_1A3a_CDS.nc $tradir/*voc${i}_*1A3a_CDS*
#1A3a_CRS
ncecat -O -u time -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc$i/voc${i}_2013_emi_1A3a_CRS.nc $tradir/*voc${i}_*1A3a_CRS*
#1A3a_CRS
ncecat -O -u time -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc$i/voc${i}_2013_emi_1A3a_LTO.nc $tradir/*voc${i}_*1A3a_LTO*
#1A3b
ncecat -O -u time -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc$i/voc${i}_2013_emi_1A3b.nc $tradir/*voc${i}_*1A3b*
#1A3c_1A3e
ncecat -O -u time -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc$i/voc${i}_2013_emi_1A3c_1A3e.nc $tradir/*voc${i}_*1A3c_1A3e*
#1A3d_1C2
ncecat -O -u time -o /mnt/raid1_12TB/wang/EDGAR_2013_factor/vocs/voc$i/voc${i}_2013_emi_1A3d_1C2.nc $tradir/*voc${i}_*1A3d_1C2*
done
