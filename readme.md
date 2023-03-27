# Lab 4 Flipflops and counters
In questo lab ci sono i sequential circuits.
## Task 1
Copiato il codice per l' ""hard"" gated SR latch, creato testbench che prova i valori di S ed R e legge Q, pare funzionare.
Manca l'analisi con Quartus della struttura con le LUT.
N.B. Nella testbench avevo messo per sbaglio il forbidden state '11' e la simulazione si fermava a causa di un loop infinito dando l'errore <Error: (vsim-3601) Iteration limit reached at time 320 ns.>
## Task 3
Implementazione behavioural del counter a 16 bit, piuttosto semplice la lettura del codice, la testbench funziona, un problema riscontrato è che bisogna creare un segnale da assegnare poi a Q perché modelsim non è in grado di leggere l'output e per esempio non è in grado di fare l'assegnazione Q<=Q+1.
Ale mi ha fatto notare che l'asynchronous clear del counter non funziona sulla FPGA board, viene risolto semplicemente rendendolo synchronous nella condizione dell'if.
## Task 4
Top-level entity: flasher.vhd, strutturale, contiene due counter(uno per derivare 1 secondo dal clock l'altro per il valore decimale del 7-segment).
Inclusa foto della schematic disegnata a mano.
Non è inclusa una testbench perché non so se Modelsim è in grado di simualare 50 milioni di giri di clock, nella directory "Rescaled_task4_with_testbench" il counter a 26 bit è sostituito con uno da 4 che fa scattare il secondo counter ogni 10 giri di clock, serve come proof of concept e la testbench è funzionante.