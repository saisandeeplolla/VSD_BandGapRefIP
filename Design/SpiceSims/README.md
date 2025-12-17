# Workshop Spice Simulation Results

## CTAT Spice simulations

[ctat_circuit_sim.sp](../SpiceNetlists/CTAT_Circuit/ctat_circuit_sim.sp)

| ![ctat_circuit_sim](../SpiceNetlists/CTAT_Circuit/ctat_circuit_sim.png) |
|:----------------------:|
| *Figure 1: CTAT circuit simulations* |

## PTAT Spice simulations

[ptat_circuit.sp](../SpiceNetlists/PTAT_Circuit/ptat_circuit.sp)

| ![ptat_circuit](../SpiceNetlists/PTAT_Circuit/ptat_circuit.png) |
|:----------------------:|
| *Figure 2: PTAT circuit* |

| ![ptat_circuit_vqp1_vra1](../SpiceNetlists/PTAT_Circuit/ptat_circuit_vqp1_vra1.png) |
|:----------------------:|
| *Figure 3: V(qp1) & V(ra1) w.r.t temperature of the PTAT circuit* |
* It can be seen that both qp1 and ra1 have the same nodal voltages. This is because the OP-AMP's input terminals are acting as a nullator to create a virtual short between qp1 and ra1.
* Node qp1 is actually a CTAT element in the PTAT circuit. We can therefore see a -ve temp coefficient in the above figure. 

| ![ptat_circuit_vqp1ra1](../SpiceNetlists/PTAT_Circuit/ptat_circuit_vqp1vra1.png) |
|:----------------------:|
| *Figure 4: V(ra1)-V(qp2) w.r.t temperature i.e. the PTAT voltage in the PTAT circuit* |
* The desired +ve temp coefficient, i.e., the +ve slope of the curve, can be seen in the above figure.

| ![ptat_circuit_vqp1_vra1_vqp1vra1](../SpiceNetlists/PTAT_Circuit/ptat_circuit_vqp1_vra1.png) |
|:----------------------:|
| *Figure 5: V(qp1) & V(ra1) & V(ra1)-V(qp2) w.r.t temperature of the PTAT circuit* |

| ![ptat_circuit_id1_id2](../SpiceNetlists/PTAT_Circuit/ptat_circuit_id1_id2.png) |
|:----------------------:|
| *Figure 6: Id1 & Id2 w.r.t temperature of the PTAT circuit* |
* As shown in the figure, the branch current is =
* This is because the R1 is chosen to be 5kohms => I = Vt*ln(N)/R1 with N = 8 => I = 10uA. The simulation also matches our calculation.

