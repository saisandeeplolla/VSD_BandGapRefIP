*** PTAT voltage generator

.lib "/home/sai/skywater-pdk-libs-sky130_fd_pr/models/sky130.lib.spice tt"
* Taking typical corner of the spice model

.include "/home/sai/skywater-pdk-libs-sky130_fd_pr/models/sky130_fd_pr__model__pnp.model.spice"
* Included the PMOS model file

.global vdd gnd
.temp 27
* Temperature

*** vcvs definition; RefDes out+ out- in+ in-
e1	net2	gnd	ra1	qp1	gain=100
* FETname drain gate source body model name length(in um) width(in um) multiplier
xmp1    q1	net2   	vdd	vdd     sky130_fd_pr__pfet_01v8_lvt     l=2     w=5     m=4
xmp2    q2    	net2    vdd     vdd     sky130_fd_pr__pfet_01v8_lvt     l=2     w=5     m=4

*** bjt definition
* BJTname collector base emitter model multiplier
xqp1	gnd	gnd	qp1	sky130_fd_pr__pnp_05v5_W3p40L3p40	m=1
xqp2    gnd     gnd     qp2     sky130_fd_pr__pnp_05v5_W3p40L3p40       m=8

*** high-poly resistance definition, xra1, xra2 in series with xra3//xra4
* Sheet resistance of this model (sheet_res) = 350ohms, resistance = sheet_res*(L/W)
* xra1 = xra2 = xra3 = xra4 = 350*(7.8/1.41) = 1.936kohms
xra1    ra1     na1     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  	l=7.8
xra2    na1     na2     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41	l=7.8
xra3    na2     qp2     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41	l=7.8
xra4    na2     qp2     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41	l=7.8

*** voltage sources for current measurement
vid1	q1	qp1	dc	0
vid2	q2	ra1	dc	0

*** supply voltage
vsup	vdd	gnd	dc 	2
.dc	temp	-40	125	5

*** control statement
.control
run
plot v(qp1) v(ra1)
plot v(qp1)-v(ra1)
plot v(qp1) v(ra1) v(qp1)-v(ra1)
plot vid1#branch vid2#branch
.endc
.end


