
rem SCANDEM1.bat to run scandemo on Jian Chen ACh data

rem Version for F90/Gino
copy scantemp.dat scantemp.zzz
copy scantemp.ach scantemp.dat

rem run SCAN

scan

rem copy scantemp.dat back to scantemp.dem, in case adc file name changed
copy scantemp.dat scantemp.ach
copy scantemp.zzz scantemp.dat
del scantemp.zzz

