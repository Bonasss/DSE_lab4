# Lab 4 Flipflops and counters
In questo lab ci sono i sequential circuits.
## Task 1
Copiato il codice per l' ""hard"" gated SR latch, creato testbench che prova i valori di S ed R e legge Q, pare funzionare.
Manca l'analisi con Quartus della struttura con le LUT.
N.B. Nella testbench avevo messo per sbaglio il forbidden state '11' e la simulazione si fermava a causa di un loop infinito dando l'errore <Error: (vsim-3601) Iteration limit reached at time 320 ns.>
## Task 3
Implementazione behavioural del counter a 16 bit, piuttosto semplice la lettura del codice, la testbench funziona, un problema riscontrato è che bisogna creare un segnale da assegnare poi a Q perché modelsim non è in grado di leggere l'output e per esempio non è in grado di fare l'assegnazione Q<=Q+1.