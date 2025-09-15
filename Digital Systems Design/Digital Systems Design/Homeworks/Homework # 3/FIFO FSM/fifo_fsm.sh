Script started on 2024-05-10 18:26:50+05:00 [TERM="xterm-256color" TTY="/dev/pts/8" COLUMNS="132" LINES="40"]
[?2004h]0;huzaifah@huzaifah-virtual-machine: ~/Downloads[01;32mhuzaifah@huzaifah-virtual-machine[00m:[01;34m~/Downloads[00m$ script fifo_non_fsm.shyosys[K
[?2004l
 /----------------------------------------------------------------------------\
 |                                                                            |
 |  yosys -- Yosys Open SYnthesis Suite                                       |
 |                                                                            |
 |  Copyright (C) 2012 - 2019  Clifford Wolf <clifford@clifford.at>           |
 |                                                                            |
 |  Permission to use, copy, modify, and/or distribute this software for any  |
 |  purpose with or without fee is hereby granted, provided that the above    |
 |  copyright notice and this permission notice appear in all copies.         |
 |                                                                            |
 |  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES  |
 |  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF          |
 |  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR   |
 |  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES    |
 |  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN     |
 |  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF   |
 |  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.            |
 |                                                                            |
 \----------------------------------------------------------------------------/

 Yosys 0.9 (git sha1 1979e0b)

[?2004h
yosys> re[K[Kexitshow -format svg -prefix opt_non_fsm fifo_non_fsm[C[C[C[C[C[C[Copt[Kshow -format svg -prefix flatten_non_fsm fifo_non_fsm[C[C[C[C[C[C[Cflatten[Kshow -format svg -prefix memory_non_fsm fifo_non_fsm[C[C[C[C[C[C[Cmemory[Kshow -format svg -prefix opt_clean_non_fsm fifo_non_fsm[C[C[C[C[C[C[Copt_clean[K[C[C[C[C[C[C[Cshow -format svg -prefix opt_rmdff_non_fsm fifo_non_fsm[C[C[C[C[C[C[Copt_rmdff[K[C[C[C[C[C[C[Cshow -format svg -prefix opt_merge_non_fsm fifo_non_fsm[C[C[C[C[C[C[Copt_merge[K[C[C[C[C[C[C[Cshow -format svg -prefix opt_expr_non_fsm fifo_non_fsm[K[C[C[C[C[C[C[Copt_expr[K[K[K[K[K[K[K[K[Kread_verilog fifo_fsm.v
[?2004lERROR: Can't open input file `fifo_fsm.v' for reading: No such file or directory
[?2004h
yosys> read_verilog fifo_fsm.v
[?2004l
1. Executing Verilog-2005 frontend: fifo_fsm.v
Parsing Verilog input from `fifo_fsm.v' to AST representation.
Generating RTLIL representation for module `\fifo_fsm'.
Warning: Replacing memory \stack with list of registers. See fifo_fsm.v:102, fifo_fsm.v:85
Note: Assuming pure combinatorial block at fifo_fsm.v:53 in
compliance with IEC 62142(E):2005 / IEEE Std. 1364.1(E):2002. Recommending
use of @* instead of @(...) for better match of synthesis and simulation.
Successfully finished Verilog frontend.
[?2004h
yosys> proc[K[K[K[Kread_verilog fifo_fsm.v[C[C[C[C[C[C[Cexit[Kshow -format svg -prefix opt_non_fsm fifo_non_fsm[1P[1P[1P[1P[1P[1P[1P[1@r[1@i[1@g[1@i[1@n[1@a[1@l[1@_[C[C[C[C[C[C[C[C[C[1Pon_fsm[1Pn_fsm[1P_fsm[1Pfsm[C[C[C
[?2004l
2. Generating Graphviz representation of design.
Writing dot description to `original_fsm.dot'.
Dumping module fifo_fsm to page 1.
Exec: dot -Tsvg 'original_fsm.dot' > 'original_fsm.svg.new' && mv 'original_fsm.svg.new' 'original_fsm.svg'
[?2004h
yosys> show -format svg -prefix original_fsm fifo_fsm[C[C[C[C[C[C[C[23Pread_verilog fifo_fsm.v[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[Kproc
[?2004l
3. Executing PROC pass (convert processes to netlists).

3.1. Executing PROC_CLEAN pass (remove empty switches from decision trees).
Cleaned up 0 empty switches.

3.2. Executing PROC_RMDEAD pass (remove dead branches from decision trees).
Removed 2 dead cases from process $proc$fifo_fsm.v:53$7 in module fifo_fsm.
Marked 21 switch rules as full_case in process $proc$fifo_fsm.v:53$7 in module fifo_fsm.
Marked 1 switch rules as full_case in process $proc$fifo_fsm.v:48$5 in module fifo_fsm.
Removed a total of 2 dead cases.

3.3. Executing PROC_INIT pass (extract init attributes).

3.4. Executing PROC_ARST pass (detect async resets in processes).

3.5. Executing PROC_MUX pass (convert decision trees to multiplexers).
Creating decoders for process `\fifo_fsm.$proc$fifo_fsm.v:53$7'.
     1/172: $17\next_state[2:0]
     2/172: $16\next_state[2:0]
     3/172: $15\next_state[2:0]
     4/172: $14\next_state[2:0]
     5/172: $3$mem2reg_rd$\stack$fifo_fsm.v:102$2_DATA[7:0]$53
     6/172: $3\ptr_gap[5:0]
     7/172: $2\read_ptr[4:0]
     8/172: $2\Data_out[7:0]
     9/172: $2$mem2reg_rd$\stack$fifo_fsm.v:102$2_DATA[7:0]$52
    10/172: $2$mem2reg_rd$\stack$fifo_fsm.v:102$2_ADDR[4:0]$51
    11/172: $13\next_state[2:0]
    12/172: $12\next_state[2:0]
    13/172: $11\next_state[2:0]
    14/172: $10\next_state[2:0]
    15/172: $3\stack[0][7:0]
    16/172: $3\stack[31][7:0]
    17/172: $3\stack[30][7:0]
    18/172: $3\stack[29][7:0]
    19/172: $3\stack[28][7:0]
    20/172: $3\stack[27][7:0]
    21/172: $3\stack[26][7:0]
    22/172: $3\stack[25][7:0]
    23/172: $3\stack[24][7:0]
    24/172: $3\stack[23][7:0]
    25/172: $3\stack[22][7:0]
    26/172: $3\stack[21][7:0]
    27/172: $3\stack[20][7:0]
    28/172: $3\stack[19][7:0]
    29/172: $3\stack[18][7:0]
    30/172: $3\stack[17][7:0]
    31/172: $3\stack[16][7:0]
    32/172: $3\stack[15][7:0]
    33/172: $3\stack[14][7:0]
    34/172: $3\stack[13][7:0]
    35/172: $3\stack[12][7:0]
    36/172: $3\stack[11][7:0]
    37/172: $3\stack[10][7:0]
    38/172: $3\stack[9][7:0]
    39/172: $3\stack[8][7:0]
    40/172: $3\stack[7][7:0]
    41/172: $3\stack[6][7:0]
    42/172: $3\stack[5][7:0]
    43/172: $3\stack[4][7:0]
    44/172: $3\stack[3][7:0]
    45/172: $3\stack[2][7:0]
    46/172: $3\stack[1][7:0]
    47/172: $2\ptr_gap[5:0]
    48/172: $2\write_ptr[4:0]
    49/172: $2\stack[31][7:0]
    50/172: $2\stack[30][7:0]
    51/172: $2\stack[29][7:0]
    52/172: $2\stack[28][7:0]
    53/172: $2\stack[27][7:0]
    54/172: $2\stack[26][7:0]
    55/172: $2\stack[25][7:0]
    56/172: $2\stack[24][7:0]
    57/172: $2\stack[23][7:0]
    58/172: $2\stack[22][7:0]
    59/172: $2\stack[21][7:0]
    60/172: $2\stack[20][7:0]
    61/172: $2\stack[19][7:0]
    62/172: $2\stack[18][7:0]
    63/172: $2\stack[17][7:0]
    64/172: $2\stack[16][7:0]
    65/172: $2\stack[15][7:0]
    66/172: $2\stack[14][7:0]
    67/172: $2\stack[13][7:0]
    68/172: $2\stack[12][7:0]
    69/172: $2\stack[11][7:0]
    70/172: $2\stack[10][7:0]
    71/172: $2\stack[9][7:0]
    72/172: $2\stack[8][7:0]
    73/172: $2\stack[7][7:0]
    74/172: $2\stack[6][7:0]
    75/172: $2\stack[5][7:0]
    76/172: $2\stack[4][7:0]
    77/172: $2\stack[3][7:0]
    78/172: $2\stack[2][7:0]
    79/172: $2\stack[1][7:0]
    80/172: $2\stack[0][7:0]
    81/172: $2$mem2reg_wr$\stack$fifo_fsm.v:85$1_ADDR[4:0]$36
    82/172: $2$mem2reg_wr$\stack$fifo_fsm.v:85$1_DATA[7:0]$37
    83/172: $9\next_state[2:0]
    84/172: $8\next_state[2:0]
    85/172: $7\next_state[2:0]
    86/172: $6\next_state[2:0]
    87/172: $5\next_state[2:0]
    88/172: $4\next_state[2:0]
    89/172: $3\next_state[2:0]
    90/172: $2\next_state[2:0]
    91/172: $1\next_state[2:0]
    92/172: $1\ptr_gap[5:0]
    93/172: $1\write_ptr[4:0]
    94/172: $1\read_ptr[4:0]
    95/172: $1\Data_out[7:0]
    96/172: $1$mem2reg_rd$\stack$fifo_fsm.v:102$2_DATA[7:0]$15
    97/172: $1$mem2reg_rd$\stack$fifo_fsm.v:102$2_ADDR[4:0]$14
    98/172: $1$mem2reg_wr$\stack$fifo_fsm.v:85$1_DATA[7:0]$13
    99/172: $1$mem2reg_wr$\stack$fifo_fsm.v:85$1_ADDR[4:0]$12
   100/172: $1\stack[31][7:0]
   101/172: $1\stack[30][7:0]
   102/172: $1\stack[29][7:0]
   103/172: $1\stack[28][7:0]
   104/172: $1\stack[27][7:0]
   105/172: $1\stack[26][7:0]
   106/172: $1\stack[25][7:0]
   107/172: $1\stack[24][7:0]
   108/172: $1\stack[23][7:0]
   109/172: $1\stack[22][7:0]
   110/172: $1\stack[21][7:0]
   111/172: $1\stack[20][7:0]
   112/172: $1\stack[19][7:0]
   113/172: $1\stack[18][7:0]
   114/172: $1\stack[17][7:0]
   115/172: $1\stack[16][7:0]
   116/172: $1\stack[15][7:0]
   117/172: $1\stack[14][7:0]
   118/172: $1\stack[13][7:0]
   119/172: $1\stack[12][7:0]
   120/172: $1\stack[11][7:0]
   121/172: $1\stack[10][7:0]
   122/172: $1\stack[9][7:0]
   123/172: $1\stack[8][7:0]
   124/172: $1\stack[7][7:0]
   125/172: $1\stack[6][7:0]
   126/172: $1\stack[5][7:0]
   127/172: $1\stack[4][7:0]
   128/172: $1\stack[3][7:0]
   129/172: $1\stack[2][7:0]
   130/172: $1\stack[1][7:0]
   131/172: $1\stack[0][7:0]
   132/172: $0$mem2reg_rd$\stack$fifo_fsm.v:102$2_DATA[7:0]$11
   133/172: $0$mem2reg_rd$\stack$fifo_fsm.v:102$2_ADDR[4:0]$10
   134/172: $0$mem2reg_wr$\stack$fifo_fsm.v:85$1_DATA[7:0]$9
   135/172: $0$mem2reg_wr$\stack$fifo_fsm.v:85$1_ADDR[4:0]$8
   136/172: $0\stack[31][7:0]
   137/172: $0\stack[30][7:0]
   138/172: $0\stack[29][7:0]
   139/172: $0\stack[28][7:0]
   140/172: $0\stack[27][7:0]
   141/172: $0\stack[26][7:0]
   142/172: $0\stack[25][7:0]
   143/172: $0\stack[24][7:0]
   144/172: $0\stack[23][7:0]
   145/172: $0\stack[22][7:0]
   146/172: $0\stack[21][7:0]
   147/172: $0\stack[20][7:0]
   148/172: $0\stack[19][7:0]
   149/172: $0\stack[18][7:0]
   150/172: $0\stack[17][7:0]
   151/172: $0\stack[16][7:0]
   152/172: $0\stack[15][7:0]
   153/172: $0\stack[14][7:0]
   154/172: $0\stack[13][7:0]
   155/172: $0\stack[12][7:0]
   156/172: $0\stack[11][7:0]
   157/172: $0\stack[10][7:0]
   158/172: $0\stack[9][7:0]
   159/172: $0\stack[8][7:0]
   160/172: $0\stack[7][7:0]
   161/172: $0\stack[6][7:0]
   162/172: $0\stack[5][7:0]
   163/172: $0\stack[4][7:0]
   164/172: $0\stack[3][7:0]
   165/172: $0\stack[2][7:0]
   166/172: $0\stack[1][7:0]
   167/172: $0\stack[0][7:0]
   168/172: $0\ptr_gap[5:0]
   169/172: $0\write_ptr[4:0]
   170/172: $0\read_ptr[4:0]
   171/172: $0\next_state[2:0]
   172/172: $0\Data_out[7:0]
Creating decoders for process `\fifo_fsm.$proc$fifo_fsm.v:48$5'.
     1/1: $0\state[2:0]

3.6. Executing PROC_DLATCH pass (convert process syncs to latches).
No latch inferred for signal `\fifo_fsm.$mem2reg_wr$\stack$fifo_fsm.v:85$1_ADDR' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7'.
No latch inferred for signal `\fifo_fsm.$mem2reg_wr$\stack$fifo_fsm.v:85$1_DATA' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7'.
No latch inferred for signal `\fifo_fsm.$mem2reg_rd$\stack$fifo_fsm.v:102$2_ADDR' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7'.
No latch inferred for signal `\fifo_fsm.$mem2reg_rd$\stack$fifo_fsm.v:102$2_DATA' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7'.
Latch inferred for signal `\fifo_fsm.\Data_out' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$2028
Latch inferred for signal `\fifo_fsm.\next_state' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$2069
Latch inferred for signal `\fifo_fsm.\read_ptr' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$2506
Latch inferred for signal `\fifo_fsm.\write_ptr' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$2533
Latch inferred for signal `\fifo_fsm.\ptr_gap' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$2568
Latch inferred for signal `\fifo_fsm.\stack[0]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$2611
Latch inferred for signal `\fifo_fsm.\stack[1]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$2776
Latch inferred for signal `\fifo_fsm.\stack[2]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$2941
Latch inferred for signal `\fifo_fsm.\stack[3]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$3106
Latch inferred for signal `\fifo_fsm.\stack[4]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$3271
Latch inferred for signal `\fifo_fsm.\stack[5]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$3436
Latch inferred for signal `\fifo_fsm.\stack[6]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$3601
Latch inferred for signal `\fifo_fsm.\stack[7]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$3766
Latch inferred for signal `\fifo_fsm.\stack[8]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$3931
Latch inferred for signal `\fifo_fsm.\stack[9]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$4096
Latch inferred for signal `\fifo_fsm.\stack[10]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$4261
Latch inferred for signal `\fifo_fsm.\stack[11]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$4426
Latch inferred for signal `\fifo_fsm.\stack[12]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$4591
Latch inferred for signal `\fifo_fsm.\stack[13]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$4756
Latch inferred for signal `\fifo_fsm.\stack[14]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$4921
Latch inferred for signal `\fifo_fsm.\stack[15]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$5086
Latch inferred for signal `\fifo_fsm.\stack[16]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$5251
Latch inferred for signal `\fifo_fsm.\stack[17]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$5416
Latch inferred for signal `\fifo_fsm.\stack[18]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$5581
Latch inferred for signal `\fifo_fsm.\stack[19]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$5746
Latch inferred for signal `\fifo_fsm.\stack[20]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$5911
Latch inferred for signal `\fifo_fsm.\stack[21]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$6076
Latch inferred for signal `\fifo_fsm.\stack[22]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$6241
Latch inferred for signal `\fifo_fsm.\stack[23]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$6406
Latch inferred for signal `\fifo_fsm.\stack[24]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$6571
Latch inferred for signal `\fifo_fsm.\stack[25]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$6736
Latch inferred for signal `\fifo_fsm.\stack[26]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$6901
Latch inferred for signal `\fifo_fsm.\stack[27]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$7066
Latch inferred for signal `\fifo_fsm.\stack[28]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$7231
Latch inferred for signal `\fifo_fsm.\stack[29]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$7396
Latch inferred for signal `\fifo_fsm.\stack[30]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$7561
Latch inferred for signal `\fifo_fsm.\stack[31]' from process `\fifo_fsm.$proc$fifo_fsm.v:53$7': $auto$proc_dlatch.cc:409:proc_dlatch$7726

3.7. Executing PROC_DFF pass (convert process syncs to FFs).
Creating register for signal `\fifo_fsm.\state' using process `\fifo_fsm.$proc$fifo_fsm.v:48$5'.
  created $dff cell `$procdff$7891' with positive edge clock.

3.8. Executing PROC_CLEAN pass (remove empty switches from decision trees).
Found and cleaned up 21 empty switches in `\fifo_fsm.$proc$fifo_fsm.v:53$7'.
Removing empty process `fifo_fsm.$proc$fifo_fsm.v:53$7'.
Found and cleaned up 1 empty switch in `\fifo_fsm.$proc$fifo_fsm.v:48$5'.
Removing empty process `fifo_fsm.$proc$fifo_fsm.v:48$5'.
Cleaned up 22 empty switches.
[?2004h
yosys> procshow -format svg -prefix original_fsm fifo_fsm[1P[1P[1P[1P[1P[1P[1P[1P[1@p[1@r[1@o[1@c[C[C[C[C[C[C[C[C[C[C[C[C[C
[?2004l
4. Generating Graphviz representation of design.
Writing dot description to `proc_fsm.dot'.
Dumping module fifo_fsm to page 1.
Exec: dot -Tsvg 'proc_fsm.dot' > 'proc_fsm.svg.new' && mv 'proc_fsm.svg.new' 'proc_fsm.svg'
[?2004h
yosys> opt_muxtree
[?2004l
5. Executing OPT_MUXTREE pass (detect dead branches in mux trees).
Running muxtree optimizer on module \fifo_fsm..
  Creating internal representation of mux trees.
  Evaluating internal representation of mux trees.
  Analyzing evaluation results.
    dead port 1/2 on $mux $procmux$1895.
    dead port 2/2 on $mux $procmux$1895.
    dead port 1/2 on $mux $procmux$1891.
    dead port 2/2 on $mux $procmux$1891.
    dead port 1/2 on $mux $procmux$1887.
    dead port 2/2 on $mux $procmux$1887.
    dead port 1/2 on $mux $procmux$1884.
    dead port 2/2 on $mux $procmux$1884.
    dead port 1/2 on $mux $procmux$1845.
    dead port 1/2 on $mux $procmux$1833.
    dead port 1/2 on $mux $procmux$1830.
    dead port 1/2 on $mux $procmux$1818.
    dead port 1/2 on $mux $procmux$1815.
    dead port 1/2 on $mux $procmux$1812.
    dead port 1/2 on $mux $procmux$1792.
    dead port 1/2 on $mux $procmux$1781.
    dead port 1/2 on $mux $procmux$1778.
    dead port 1/2 on $mux $procmux$1767.
    dead port 1/2 on $mux $procmux$1764.
    dead port 1/2 on $mux $procmux$1761.
    dead port 1/2 on $mux $procmux$1752.
    dead port 2/2 on $mux $procmux$1752.
    dead port 1/2 on $mux $procmux$1750.
    dead port 2/2 on $mux $procmux$1750.
    dead port 1/2 on $mux $procmux$1745.
    dead port 2/2 on $mux $procmux$1745.
    dead port 1/2 on $mux $procmux$1743.
    dead port 2/2 on $mux $procmux$1743.
    dead port 1/2 on $mux $procmux$211.
    dead port 1/2 on $mux $procmux$201.
    dead port 1/2 on $mux $procmux$198.
    dead port 1/2 on $mux $procmux$188.
    dead port 1/2 on $mux $procmux$185.
    dead port 1/2 on $mux $procmux$182.
    dead port 1/2 on $mux $procmux$174.
    dead port 2/2 on $mux $procmux$174.
    dead port 1/2 on $mux $procmux$172.
    dead port 2/2 on $mux $procmux$172.
    dead port 1/2 on $mux $procmux$168.
    dead port 2/2 on $mux $procmux$168.
    dead port 1/2 on $mux $procmux$166.
    dead port 2/2 on $mux $procmux$166.
    dead port 1/2 on $mux $procmux$97.
    dead port 1/2 on $mux $procmux$88.
    dead port 1/2 on $mux $procmux$85.
    dead port 1/2 on $mux $procmux$76.
    dead port 1/2 on $mux $procmux$73.
    dead port 1/2 on $mux $procmux$70.
Removed 48 multiplexer ports.
<suppressed ~39 debug messages>
[?2004h
yosys> opt_muxtree[C[C[C[C[C[C[Cshow -format svg -prefix proc_fsm fifo_fsm[C[1P[1P[1P[1P[1@o[1@p[1@t[C[1@_[1@m[1@u[1@x[1@t[1@r[1@e[1@e[C[C[C[C[C[C[C[C[C[C[C[C[C
[?2004l
6. Generating Graphviz representation of design.
Writing dot description to `opt_muxtree_fsm.dot'.
Dumping module fifo_fsm to page 1.
Exec: dot -Tsvg 'opt_muxtree_fsm.dot' > 'opt_muxtree_fsm.svg.new' && mv 'opt_muxtree_fsm.svg.new' 'opt_muxtree_fsm.svg'
[?2004h
yosys> opt_expr
[?2004l
7. Executing OPT_EXPR pass (perform const folding).
Optimizing module fifo_fsm.
<suppressed ~2751 debug messages>
[?2004h
yosys> opt_exprshow -format svg -prefix opt_muxtree_fsm fifo_fsm[1P[1P[1P[1P[1P[1P[C[1@x[1@p[1@r[C[C[C[C[C[C[C[C[C[C[C[C[C
[?2004l
8. Generating Graphviz representation of design.
Writing dot description to `opt_expr_fsm.dot'.
Dumping module fifo_fsm to page 1.
Exec: dot -Tsvg 'opt_expr_fsm.dot' > 'opt_expr_fsm.svg.new' && mv 'opt_expr_fsm.svg.new' 'opt_expr_fsm.svg'
[?2004h
yosys> opt_merge
[?2004l
9. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\fifo_fsm'.
<suppressed ~3747 debug messages>
Removed a total of 1249 cells.
[?2004h
yosys> opt_merge[C[C[C[C[C[C[Cshow -format svg -prefix opt_expr_fsm fifo_fsm[C[C[1P[1P[1P[1P[1@m[1@e[1@r[1@g[1@e[C[C[C[C[C[C[C[C[C[C[C[C[C
[?2004l
10. Generating Graphviz representation of design.
Writing dot description to `opt_merge_fsm.dot'.
Dumping module fifo_fsm to page 1.
Exec: dot -Tsvg 'opt_merge_fsm.dot' > 'opt_merge_fsm.svg.new' && mv 'opt_merge_fsm.svg.new' 'opt_merge_fsm.svg'
[?2004h
yosys> opt_rmdff
[?2004l
11. Executing OPT_RMDFF pass (remove dff with constant values).
[?2004h
yosys> opt_rmdff[C[C[C[C[C[C[Cshow -format svg -prefix opt_merge_fsm fifo_fsm[1P[1P[1P[1P[1P[1@r[1@m[1@d[1@f[1@f[C[C[C[C[C[C[C[C[C[C[C[C[C
[?2004l
12. Generating Graphviz representation of design.
Writing dot description to `opt_rmdff_fsm.dot'.
Dumping module fifo_fsm to page 1.
Exec: dot -Tsvg 'opt_rmdff_fsm.dot' > 'opt_rmdff_fsm.svg.new' && mv 'opt_rmdff_fsm.svg.new' 'opt_rmdff_fsm.svg'
[?2004h
yosys> opt_clean
[?2004l
13. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \fifo_fsm..
Removed 0 unused cells and 4267 unused wires.
<suppressed ~1 debug messages>
[?2004h
yosys> opt_clean[C[C[C[C[C[C[Cshow -format svg -prefix opt_rmdff_fsm fifo_fsm[1P[1P[1P[1P[1P[1P[1P[1P[1@p[1@t[C[1@_[1@c[1@l[1@e[1@a[1@n[C[C[C[C[C[C[C[C[C[C[C[C[C
[?2004l
14. Generating Graphviz representation of design.
Writing dot description to `opt_clean_fsm.dot'.
Dumping module fifo_fsm to page 1.
Exec: dot -Tsvg 'opt_clean_fsm.dot' > 'opt_clean_fsm.svg.new' && mv 'opt_clean_fsm.svg.new' 'opt_clean_fsm.svg'
[?2004h
yosys> memory
[?2004l
15. Executing MEMORY pass.

15.1. Executing MEMORY_DFF pass (merging $dff cells to $memrd and $memwr).

15.2. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \fifo_fsm..

15.3. Executing MEMORY_SHARE pass (consolidating $memrd/$memwr cells).

15.4. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \fifo_fsm..

15.5. Executing MEMORY_COLLECT pass (generating $mem cells).

15.6. Executing MEMORY_MAP pass (converting $mem cells to logic and flip-flops).
[?2004h
yosys> memoryshow -format svg -prefix opt_clean_fsm fifo_fsm[C[1P[1P[1P[1P[1P[1P[1P[1P[1P[1@m[1@e[1@m[1@o[1@r[1@y[C[C[C[C[C[C[C[C[C[C[C[C[C
[?2004l
16. Generating Graphviz representation of design.
Writing dot description to `memory_fsm.dot'.
Dumping module fifo_fsm to page 1.
Exec: dot -Tsvg 'memory_fsm.dot' > 'memory_fsm.svg.new' && mv 'memory_fsm.svg.new' 'memory_fsm.svg'
[?2004h
yosys> show -format svg -prefix memory_fsm fifo_fsm[C[C[C[C[C[C[Cmemory[Kshow -format svg -prefix memory_fsm fifo_fsm[C[C[C[C[C[C[C[Kflatten
[?2004l
17. Executing FLATTEN pass (flatten design).
No more expansions possible.
[?2004h
yosys> flattenshow -format svg -prefix memory_fsm fifo_fsm[1P[1P[1P[1P[1P[1P[1@f[1@l[1@a[1@t[1@t[1@e[1@n[C[C[C[C[C[C[C[C[C[C[C[C[C
[?2004l
18. Generating Graphviz representation of design.
Writing dot description to `flatten_fsm.dot'.
Dumping module fifo_fsm to page 1.
Exec: dot -Tsvg 'flatten_fsm.dot' > 'flatten_fsm.svg.new' && mv 'flatten_fsm.svg.new' 'flatten_fsm.svg'
[?2004h
yosys> opt
[?2004l
19. Executing OPT pass (performing simple optimizations).

19.1. Executing OPT_EXPR pass (perform const folding).
Optimizing module fifo_fsm.

19.2. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\fifo_fsm'.
Removed a total of 0 cells.

19.3. Executing OPT_MUXTREE pass (detect dead branches in mux trees).
Running muxtree optimizer on module \fifo_fsm..
  Creating internal representation of mux trees.
  Evaluating internal representation of mux trees.
  Analyzing evaluation results.
Removed 0 multiplexer ports.
<suppressed ~6 debug messages>

19.4. Executing OPT_REDUCE pass (consolidate $*mux and $reduce_* inputs).
  Optimizing cells in module \fifo_fsm.
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7888: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$7887 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7876: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$7875 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7858: { $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7723: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$7722 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7711: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$7710 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7693: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7558: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$7557 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7546: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$7545 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7528: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7393: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$7392 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7381: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$7380 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7363: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7228: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$7227 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7216: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$7215 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7198: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7063: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$7062 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7051: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$7050 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$7033: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6898: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$6897 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6886: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$6885 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6868: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6733: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$6732 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6721: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$6720 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6703: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6568: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$6567 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6556: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$6555 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6538: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6403: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$6402 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6391: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$6390 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6373: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6238: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$6237 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6226: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$6225 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6208: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6073: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$6072 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6061: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$6060 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$6043: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5908: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$5907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5896: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$5895 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5878: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5743: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$5742 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5731: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$5730 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5713: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5578: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$5577 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5566: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$5565 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5548: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5413: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$5412 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5401: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$5400 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5383: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5248: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$5247 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5236: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$5235 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5218: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5083: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$5082 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5071: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$5070 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$5053: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4918: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$4917 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4906: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$4905 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4888: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4753: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$4752 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4741: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$4740 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4723: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4588: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$4587 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4576: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$4575 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4558: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4423: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$4422 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4411: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$4410 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4393: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4258: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$4257 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4246: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$4245 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4228: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4093: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$4092 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4081: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$4080 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$4063: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3928: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$3927 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3916: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$3915 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3898: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3763: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$3762 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3751: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$3750 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3733: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3598: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$3597 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3586: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$3585 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3568: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3433: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$3432 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3421: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$3420 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3403: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3268: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$3267 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3256: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$3255 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3238: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3103: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$3102 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3091: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$3090 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$3073: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2742 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$2938: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$2937 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$2926: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$2925 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$2908: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2907 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$2773: { $auto$rtlil.cc:1832:Not$2538 $auto$rtlil.cc:1862:And$2772 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$2761: { $auto$rtlil.cc:1832:Not$2548 $auto$rtlil.cc:1862:And$2760 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$2743: { $auto$rtlil.cc:1862:And$2622 $auto$rtlil.cc:1862:And$2626 $auto$rtlil.cc:1862:And$2630 $auto$rtlil.cc:1862:And$2634 $auto$rtlil.cc:1862:And$2638 $auto$rtlil.cc:1862:And$2642 $auto$rtlil.cc:1862:And$2646 $auto$rtlil.cc:1862:And$2650 $auto$rtlil.cc:1862:And$2654 $auto$rtlil.cc:1862:And$2658 $auto$rtlil.cc:1862:And$2662 $auto$rtlil.cc:1862:And$2666 $auto$rtlil.cc:1862:And$2670 $auto$rtlil.cc:1862:And$2674 $auto$rtlil.cc:1862:And$2678 $auto$rtlil.cc:1862:And$2682 $auto$rtlil.cc:1862:And$2686 $auto$rtlil.cc:1862:And$2690 $auto$rtlil.cc:1862:And$2694 $auto$rtlil.cc:1862:And$2698 $auto$rtlil.cc:1862:And$2702 $auto$rtlil.cc:1862:And$2706 $auto$rtlil.cc:1862:And$2710 $auto$rtlil.cc:1862:And$2714 $auto$rtlil.cc:1862:And$2718 $auto$rtlil.cc:1862:And$2722 $auto$rtlil.cc:1862:And$2726 $auto$rtlil.cc:1862:And$2730 $auto$rtlil.cc:1862:And$2734 $auto$rtlil.cc:1862:And$2738 $auto$rtlil.cc:1862:And$2742 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$2608: { $auto$rtlil.cc:1862:And$2065 $auto$rtlil.cc:1862:And$2564 $auto$rtlil.cc:1862:And$2587 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$2565: { $auto$rtlil.cc:1862:And$2546 $auto$rtlil.cc:1862:And$2564 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$2503: { $auto$rtlil.cc:1862:And$2178 $auto$rtlil.cc:1862:And$2286 $auto$rtlil.cc:1862:And$2394 $auto$rtlil.cc:1862:And$2502 }
    New input vector for $reduce_or cell $auto$proc_dlatch.cc:247:make_hold$2066: { $auto$rtlil.cc:1862:And$2047 $auto$rtlil.cc:1862:And$2065 }
    New ctrl vector for $pmux cell $procmux$109: { $procmux$140_CMP $procmux$139_CMP $procmux$138_CMP $procmux$137_CMP $procmux$136_CMP $procmux$135_CMP $procmux$134_CMP $procmux$133_CMP $procmux$132_CMP $procmux$131_CMP $procmux$130_CMP $procmux$129_CMP $procmux$128_CMP $procmux$127_CMP $procmux$126_CMP $procmux$125_CMP $procmux$124_CMP $procmux$123_CMP $procmux$122_CMP $procmux$121_CMP $procmux$120_CMP $procmux$119_CMP $procmux$118_CMP $procmux$117_CMP $procmux$116_CMP $procmux$115_CMP $procmux$114_CMP $procmux$113_CMP $procmux$112_CMP $procmux$111_CMP $procmux$110_CMP }
    New ctrl vector for $pmux cell $procmux$1859: $auto$opt_reduce.cc:132:opt_mux$7893
    New ctrl vector for $pmux cell $procmux$1865: { $procmux$1021_CMP $procmux$100_CMP }
    New ctrl vector for $pmux cell $procmux$1871: $procmux$1021_CMP
    New ctrl vector for $pmux cell $procmux$1875: $procmux$100_CMP
    New ctrl vector for $pmux cell $procmux$1879: $procmux$100_CMP
    New input vector for $reduce_or cell $auto$opt_reduce.cc:126:opt_mux$7892: { $procmux$100_CMP $procmux$1021_CMP $procmux$1770_CMP $procmux$1821_CMP }
  Optimizing cells in module \fifo_fsm.
Performed a total of 107 changes.

19.5. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\fifo_fsm'.
Removed a total of 0 cells.

19.6. Executing OPT_RMDFF pass (remove dff with constant values).

19.7. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \fifo_fsm..
Removed 1 unused cells and 1 unused wires.
<suppressed ~2 debug messages>

19.8. Executing OPT_EXPR pass (perform const folding).
Optimizing module fifo_fsm.

19.9. Rerunning OPT passes. (Maybe there is more to do..)

19.10. Executing OPT_MUXTREE pass (detect dead branches in mux trees).
Running muxtree optimizer on module \fifo_fsm..
  Creating internal representation of mux trees.
  Evaluating internal representation of mux trees.
  Analyzing evaluation results.
Removed 0 multiplexer ports.
<suppressed ~6 debug messages>

19.11. Executing OPT_REDUCE pass (consolidate $*mux and $reduce_* inputs).
  Optimizing cells in module \fifo_fsm.
Performed a total of 0 changes.

19.12. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\fifo_fsm'.
Removed a total of 0 cells.

19.13. Executing OPT_RMDFF pass (remove dff with constant values).

19.14. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \fifo_fsm..

19.15. Executing OPT_EXPR pass (perform const folding).
Optimizing module fifo_fsm.

19.16. Finished OPT passes. (There is nothing 