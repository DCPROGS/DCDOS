# DCDOS
DCDOS repository contains the original compiled DC DOS programs written in Fortran, with GINO graphics.
Some programs have been rewriten in FORTRAN to compile for Windows (HJCFIT and AUTPLOT: see DCWIN repository) and some are being rewriten in pure Python (theoretical calculation programs: see SCALCS repository; curve fitting program: see CVFIT repository) or Python/C++ (see HJCFIT repository).  However, some programs are available only for DOS, especially the crucial SCAN program for idealisation of raw single-channel data. 
The DOS programs run on most PCs, but to run them on a Windows 7 or Windows 8 machine, you must install DOSBOX first. The following method works on a 64 bit Windows 7 machine:
- Download the programs and stuff needed to run them as a zip file by clicking button'Download ZIP' or by cloning all the repository using git (command 'got clone https://github.com/DCPROGS/DCDOS.git'). 
- Download and install DOSBOX from http://www.dosbox.com/ 
- Run DOSBOX (eg by clicking the desktop icon)
- At the Z:\> prompt in the DOS box, type
    mount c c:\DCDOS
- To go to the virtual disk C which is now the DCDOS folder- type
    C:\ 
- At the C:\> prompt you can type HELP for a list of commands, eg type DIR to see the contents of the \dcprogs folder.
- Type scan to run scan.exe or the name of any other .exe file in the DCDOS folder. A new window appears in which the program runs. You can make it run whole screen by hitting alt-enter (repeat to exit full screen mode). Remember that DOS file names are restricted to 8 characters + 3 character suffix. You can use only letters and numbers in the file name, no spaces or punctuation.
- When you leave the program you get back to the C:\> prompt. Type EXIT to end the DOS emulation.

