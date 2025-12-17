**** ctat voltage generation circuit with variable current *****

*.lib "/opt/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"

.lib "/home/sai/skywater-pdk-libs-sky130_fd_pr/models/sky130.lib.spice" tt
* Taking typical corner of the spice model

.include "/home/sai/skywater-pdk-libs-sky130_fd_pr/models/sky130_fd_pr__model__pnp.model.spice"
* Included the PMOS model file

.global vdd gnd
.temp 27

*** bjt definition
xqp1	gnd	gnd	qp1	gnd	sky130_fd_pr__pnp_05v5_W3p40L3p40	m=1

*** supply current
vsup	vdd	gnd	dc	2
isup	vdd	qp1	dc 	10u

*** Simulation
.dc	temp	-40	125	5	isup	1.25u	10u	1.25u


*** control statement
.control
run
plot v(qp1)
.endc
.end

