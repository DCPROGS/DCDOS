Rem To run SCAN demo on NMDA data

copy scantemp.dat scantemp.zzz
copy scantemp.513 scantemp.dat

rem Run SCAN

scan

rem copy scantemp.dat back to scantemp.dem, in case adc file name changed

copy scantemp.dat scantemp.513
copy scantemp.zzz scantemp.dat
del scantemp.zzz

