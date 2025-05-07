#!/bin/csh -f

setenv ALTOSHOME /share/instsww/cadence/LIBERATE

set mmsim_path=/share/instsww/cadence/LIBERATE/tools.lnx86
setenv LD_LIBRARY_PATH ${mmsim_path}/lib/64bit:${mmsim_path}/inca/lib/64bit:${mmsim_path}/mdl/lib/64bit:${mmsim_path}/mmsim/lib/64bit:${mmsim_path}/spectre/lib/64bit:${mmsim_path}/fmc/lib/64bit:${mmsim_path}/dfII/lib/64bit:${LD_LIBRARY_PATH}


spectre -64 +multiple -cp -ss -l -f nutascii +lqt 0 /scratch/eecs251b-aan/project/eecs251b_sp25_rx_ams_afe/characterization/decks.eda-2.EECS.Berkeley.EDU.T20250507000114673637S3264862/strongARMLatch/delay_10/delay_10_001/sim.sp
