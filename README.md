# VSD BandGapRefIP
VSD workshop of Bandgap Voltage Reference (BGR) Design and Characterization

## Pre-requisite tools
This repo uses tech files from the following two repos:

[eda-technology](https://github.com/silicon-vlsi-org/eda-technology.git)

[skywater-pdk-libs-sky130_fd_pr.git](https://github.com/google/skywater-pdk-libs-sky130_fd_pr.git)

Note: There is a bug in skywater-pdk-libs-sky130_fd_pr/cell/sky130_fd_pr__nfet_05v0_nvt.pm3.spice file

Line 16 does not have a '.' infront of include statement and ngspice treats its as a current source. So either comment it out or add '.' for simulating the spice files in this repo.
Same issue has been already raised here [issue#286](https://github.com/google/skywater-pdk/issues/286)

Make sure to dowload or clone the above mentioned two repos in the same directory as this repo to execute the scripts in this repo as they have relative paths



