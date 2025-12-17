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
*.dc	temp	-40	125	5	isup	1.25u	10u	1.25u


*** control statement
.control
*run
let isup_vector = 1.25u
repeat 9
	alter isup $&isup_vector
	dc temp -40 125 5
	let isup_vector = isup_vector + 1.25u
end

plot dc1.v(qp1) dc2.v(qp1) dc3.v(qp1) dc4.v(qp1) dc5.v(qp1) dc6.v(qp1) dc7.v(qp1) dc8.v(qp1) dc9.v(qp1)
.endc
.end

