#!/bin/csh -f

setenv SKI_STANDALONE_MODE 1

# Turn on 'SKI_DEBUG_MSG' to show verbose messages.
# setenv SKI_DEBUG_MSG 0x10000000

# Use 'SKI_SAVE_WAVEFORMS' to save all waveforms of simulations.
# setenv SKI_SAVE_WAVEFORMS 1

setenv SKI_DEBUG_NETLIST_DEP ski.dep

setenv ALTOSHOME /share/instsww/cadence/LIBERATE

set mmsim_path=/share/instsww/cadence/LIBERATE/tools.lnx86
setenv LD_LIBRARY_PATH ${mmsim_path}/lib/64bit:${mmsim_path}/inca/lib/64bit:${mmsim_path}/mdl/lib/64bit:${mmsim_path}/mmsim/lib/64bit:${mmsim_path}/spectre/lib/64bit:${mmsim_path}/fmc/lib/64bit:${mmsim_path}/dfII/lib/64bit:${LD_LIBRARY_PATH}


gdb --args /share/instsww/cadence/LIBERATE/tools.lnx86/spectre/bin/64bit/spectre -64 -plugin /share/instsww/cadence/LIBERATE/lib/lnx86_64_2.6/libSki.so +multiple -cp -ss +l sim.lis -f sst2 +lqt 0 
