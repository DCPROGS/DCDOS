# DCDOS
DCDOS repository contains the original compiled DC DOS programs written in Fortran, with GINO graphics.

Some programs have been rewriten in FORTRAN to compile for Windows (HJCFIT and AUTPLOT: see DCWIN repository) and some are being rewriten in pure Python (theoretical calculation programs: see SCALCS repository; curve fitting program: see CVFIT repository) or Python/C++ (see HJCFIT repository).  However, some programs are available only for DOS, especially the crucial SCAN program for idealisation of raw single-channel data. 

The DOS programs run on most PCs, but to run them on a Windows 7 or Windows 8 machine, you must install DOSBOX first. The following method works on a 64 bit Windows 7 machine (theoretically should work on MAC and Linux machines):
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

The instructions for installation and running DC DOS programs on MAC (see MAC_instructions_DCProgs.pdf file) have been compiled by [Andrew Plested] (http://www.fmp-berlin.info/research/molecular-physiology-and-cell-biology/research-groups/plested/mnb0.html), who has kindly agreed to help if you have problems.

Here follows short description of DOS DCprogs. For more details see [OneMol.org page] (http://www.onemol.org.uk/?page_id=331).

###SCAN (DOS only!)
SCAN is ‘idealisation’ program which uses time course fitting to measure open and shut time intervals of single channel records. It converts a raw single channel recording into a list of shut times, open times and amplitudes (a .scn file) that is used for subsequent analyses. 

###HJCFIT
HJCFIT is a program for maximum likelihood fitting of a mechanism directly to the entire sequence of open and shut times, with exact missed events correction. The input for HJCFIT is a list of idealised open and shut time intervals. A kinetic mechanism is specified with some initial guesses for the rate constants. Currently fitting is done using the Simplex algorithm to maximise the likelihood.

The name of the program is an acronym for Hawkes, Jalali & Colquhoun, whose papers in 1990 and 1992 (HJC92) described the exact solution of the missed event problem, which is the basis of the program. The HJCFIT method was first described by Colquhoun, Hawkes & Srodzinski in 1996 (CHS96). The properties of the estimates of rate constants obtained by this method have now been evaluated (Colquhoun, Hatton & Hawkes, 2003).

###EKDIST

EKDIST is used for fitting of many sorts of distributions to the output from SCAN. It fits mixtures of exponential distributions to dwell time, mixtures of geometric distributions to discrete distributions (such as the number of apparent openings per burst), and mixtures of gaussians to amplitude distributions. EKDIST also does stability plots (for amplitudes and durations), many sorts of burst analysis, subconductance transition listing (and 3D plotting), correlations of various types, including 3D bivariate distributions and dependency plots. It has far more options than any commercial program for the empirical fitting of single channel data.
