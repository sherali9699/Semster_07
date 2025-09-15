Script started on 2024-05-10 18:21:09+05:00 [TERM="xterm-256color" TTY="/dev/pts/9" COLUMNS="132" LINES="40"]
[?2004h]0;huzaifah@huzaifah-virtual-machine: ~/Downloads[01;32mhuzaifah@huzaifah-virtual-machine[00m:[01;34m~/Downloads[00m$ yosys
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
yosys> r[Kexitshow -format svg -prefix original_non_fsm fifo_non_fsm[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[4P[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[23Pread_verilog fifo_non_fsm.v[C[C[C[C[C[C[Cexit[Kread_verilog fifo_non_fsm.v
[?2004l1. Executing Verilog-2005 frontend: fifo_non_fsm.v
Parsing Verilog input from `fifo_non_fsm.v' to AST representation.
Generating RTLIL representation for module `\fifo_non_fsm'.
Warning: Replacing memory \stack with list of registers. See fifo_non_fsm.v:55
Successfully finished Verilog frontend.
[?2004h
yosys> read_verilog fifo_non_fsm.v[C[C[C[C[C[C[Cexit[Kshow -format svg -prefix original_non_fsm fifo_non_fsm
[?2004l
2. Generating Graphviz representation of design.
Writing dot description to `original_non_fsm.dot'.
Dumping module fifo_non_fsm to page 1.
Exec: dot -Tsvg 'original_non_fsm.dot' > 'original_non_fsm.svg.new' && mv 'original_non_fsm.svg.new' 'original_non_fsm.svg'
[?2004h
yosys> proc
[?2004l
3. Executing PROC pass (convert processes to netlists).

3.1. Executing PROC_CLEAN pass (remove empty switches from decision trees).
Cleaned up 0 empty switches.

3.2. Executing PROC_RMDEAD pass (remove dead branches from decision trees).
Removed 3 dead cases from process $proc$fifo_non_fsm.v:43$9 in module fifo_non_fsm.
Marked 12 switch rules as full_case in process $proc$fifo_non_fsm.v:43$9 in module fifo_non_fsm.
Removed a total of 3 dead cases.

3.3. Executing PROC_INIT pass (extract init attributes).

3.4. Executing PROC_ARST pass (detect async resets in processes).
Found async reset \rst in `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.

3.5. Executing PROC_MUX pass (convert decision trees to multiplexers).
Creating decoders for process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
     1/103: $7$mem2reg_rd$\stack$fifo_non_fsm.v:83$5_DATA[7:0]$101
     2/103: $6$mem2reg_wr$\stack$fifo_non_fsm.v:84$6_ADDR[4:0]$99
     3/103: $6$mem2reg_wr$\stack$fifo_non_fsm.v:84$6_DATA[7:0]$100
     4/103: $6$mem2reg_rd$\stack$fifo_non_fsm.v:83$5_DATA[7:0]$98
     5/103: $6$mem2reg_rd$\stack$fifo_non_fsm.v:83$5_ADDR[4:0]$97
     6/103: $6$mem2reg_rd$\stack$fifo_non_fsm.v:76$4_DATA[7:0]$89
     7/103: $5$mem2reg_rd$\stack$fifo_non_fsm.v:76$4_DATA[7:0]$84
     8/103: $5$mem2reg_rd$\stack$fifo_non_fsm.v:76$4_ADDR[4:0]$83
     9/103: $5$mem2reg_wr$\stack$fifo_non_fsm.v:84$6_DATA[7:0]$88
    10/103: $5$mem2reg_wr$\stack$fifo_non_fsm.v:84$6_ADDR[4:0]$87
    11/103: $5$mem2reg_rd$\stack$fifo_non_fsm.v:83$5_DATA[7:0]$86
    12/103: $5$mem2reg_rd$\stack$fifo_non_fsm.v:83$5_ADDR[4:0]$85
    13/103: $4$mem2reg_wr$\stack$fifo_non_fsm.v:69$3_ADDR[4:0]$71
    14/103: $4$mem2reg_wr$\stack$fifo_non_fsm.v:69$3_DATA[7:0]$72
    15/103: $4$mem2reg_wr$\stack$fifo_non_fsm.v:84$6_DATA[7:0]$78
    16/103: $4$mem2reg_wr$\stack$fifo_non_fsm.v:84$6_ADDR[4:0]$77
    17/103: $4$mem2reg_rd$\stack$fifo_non_fsm.v:83$5_DATA[7:0]$76
    18/103: $4$mem2reg_rd$\stack$fifo_non_fsm.v:83$5_ADDR[4:0]$75
    19/103: $4$mem2reg_rd$\stack$fifo_non_fsm.v:76$4_DATA[7:0]$74
    20/103: $4$mem2reg_rd$\stack$fifo_non_fsm.v:76$4_ADDR[4:0]$73
    21/103: $4$mem2reg_rd$\stack$fifo_non_fsm.v:62$2_DATA[7:0]$66
    22/103: $3$mem2reg_rd$\stack$fifo_non_fsm.v:62$2_DATA[7:0]$57
    23/103: $3$mem2reg_rd$\stack$fifo_non_fsm.v:62$2_ADDR[4:0]$56
    24/103: $3$mem2reg_wr$\stack$fifo_non_fsm.v:84$6_DATA[7:0]$65
    25/103: $3$mem2reg_wr$\stack$fifo_non_fsm.v:84$6_ADDR[4:0]$64
    26/103: $3$mem2reg_rd$\stack$fifo_non_fsm.v:83$5_DATA[7:0]$63
    27/103: $3$mem2reg_rd$\stack$fifo_non_fsm.v:83$5_ADDR[4:0]$62
    28/103: $3$mem2reg_rd$\stack$fifo_non_fsm.v:76$4_DATA[7:0]$61
    29/103: $3$mem2reg_rd$\stack$fifo_non_fsm.v:76$4_ADDR[4:0]$60
    30/103: $3$mem2reg_wr$\stack$fifo_non_fsm.v:69$3_DATA[7:0]$59
    31/103: $3$mem2reg_wr$\stack$fifo_non_fsm.v:69$3_ADDR[4:0]$58
    32/103: $2$mem2reg_wr$\stack$fifo_non_fsm.v:55$1_ADDR[4:0]$38
    33/103: $2$mem2reg_wr$\stack$fifo_non_fsm.v:55$1_DATA[7:0]$39
    34/103: $2$mem2reg_wr$\stack$fifo_non_fsm.v:84$6_DATA[7:0]$49
    35/103: $2$mem2reg_wr$\stack$fifo_non_fsm.v:84$6_ADDR[4:0]$48
    36/103: $2$mem2reg_rd$\stack$fifo_non_fsm.v:83$5_DATA[7:0]$47
    37/103: $2$mem2reg_rd$\stack$fifo_non_fsm.v:83$5_ADDR[4:0]$46
    38/103: $2$mem2reg_rd$\stack$fifo_non_fsm.v:76$4_DATA[7:0]$45
    39/103: $2$mem2reg_rd$\stack$fifo_non_fsm.v:76$4_ADDR[4:0]$44
    40/103: $2$mem2reg_wr$\stack$fifo_non_fsm.v:69$3_DATA[7:0]$43
    41/103: $2$mem2reg_wr$\stack$fifo_non_fsm.v:69$3_ADDR[4:0]$42
    42/103: $2$mem2reg_rd$\stack$fifo_non_fsm.v:62$2_DATA[7:0]$41
    43/103: $2$mem2reg_rd$\stack$fifo_non_fsm.v:62$2_ADDR[4:0]$40
    44/103: $1$mem2reg_wr$\stack$fifo_non_fsm.v:84$6_DATA[7:0]$33
    45/103: $1$mem2reg_wr$\stack$fifo_non_fsm.v:84$6_ADDR[4:0]$32
    46/103: $1$mem2reg_rd$\stack$fifo_non_fsm.v:83$5_DATA[7:0]$31
    47/103: $1$mem2reg_rd$\stack$fifo_non_fsm.v:83$5_ADDR[4:0]$30
    48/103: $1$mem2reg_rd$\stack$fifo_non_fsm.v:76$4_DATA[7:0]$29
    49/103: $1$mem2reg_rd$\stack$fifo_non_fsm.v:76$4_ADDR[4:0]$28
    50/103: $1$mem2reg_wr$\stack$fifo_non_fsm.v:69$3_DATA[7:0]$27
    51/103: $1$mem2reg_wr$\stack$fifo_non_fsm.v:69$3_ADDR[4:0]$26
    52/103: $1$mem2reg_rd$\stack$fifo_non_fsm.v:62$2_DATA[7:0]$25
    53/103: $1$mem2reg_rd$\stack$fifo_non_fsm.v:62$2_ADDR[4:0]$24
    54/103: $1$mem2reg_wr$\stack$fifo_non_fsm.v:55$1_DATA[7:0]$23
    55/103: $1$mem2reg_wr$\stack$fifo_non_fsm.v:55$1_ADDR[4:0]$22
    56/103: $0$mem2reg_wr$\stack$fifo_non_fsm.v:84$6_DATA[7:0]$21
    57/103: $0$mem2reg_wr$\stack$fifo_non_fsm.v:84$6_ADDR[4:0]$20
    58/103: $0$mem2reg_rd$\stack$fifo_non_fsm.v:83$5_DATA[7:0]$19
    59/103: $0$mem2reg_rd$\stack$fifo_non_fsm.v:83$5_ADDR[4:0]$18
    60/103: $0$mem2reg_rd$\stack$fifo_non_fsm.v:76$4_DATA[7:0]$17
    61/103: $0$mem2reg_rd$\stack$fifo_non_fsm.v:76$4_ADDR[4:0]$16
    62/103: $0$mem2reg_wr$\stack$fifo_non_fsm.v:69$3_DATA[7:0]$15
    63/103: $0$mem2reg_wr$\stack$fifo_non_fsm.v:69$3_ADDR[4:0]$14
    64/103: $0$mem2reg_rd$\stack$fifo_non_fsm.v:62$2_DATA[7:0]$13
    65/103: $0$mem2reg_rd$\stack$fifo_non_fsm.v:62$2_ADDR[4:0]$12
    66/103: $0$mem2reg_wr$\stack$fifo_non_fsm.v:55$1_DATA[7:0]$11
    67/103: $0$mem2reg_wr$\stack$fifo_non_fsm.v:55$1_ADDR[4:0]$10
    68/103: $0\stack[31][7:0]
    69/103: $0\stack[30][7:0]
    70/103: $0\stack[29][7:0]
    71/103: $0\stack[28][7:0]
    72/103: $0\stack[27][7:0]
    73/103: $0\stack[26][7:0]
    74/103: $0\stack[25][7:0]
    75/103: $0\stack[24][7:0]
    76/103: $0\stack[23][7:0]
    77/103: $0\stack[22][7:0]
    78/103: $0\stack[21][7:0]
    79/103: $0\stack[20][7:0]
    80/103: $0\stack[19][7:0]
    81/103: $0\stack[18][7:0]
    82/103: $0\stack[17][7:0]
    83/103: $0\stack[16][7:0]
    84/103: $0\stack[15][7:0]
    85/103: $0\stack[14][7:0]
    86/103: $0\stack[13][7:0]
    87/103: $0\stack[12][7:0]
    88/103: $0\stack[11][7:0]
    89/103: $0\stack[10][7:0]
    90/103: $0\stack[9][7:0]
    91/103: $0\stack[8][7:0]
    92/103: $0\stack[7][7:0]
    93/103: $0\stack[6][7:0]
    94/103: $0\stack[5][7:0]
    95/103: $0\stack[4][7:0]
    96/103: $0\stack[3][7:0]
    97/103: $0\stack[2][7:0]
    98/103: $0\stack[1][7:0]
    99/103: $0\stack[0][7:0]
   100/103: $0\ptr_gap[5:0]
   101/103: $0\write_ptr[4:0]
   102/103: $0\Data_out[7:0]
   103/103: $0\read_ptr[4:0]

3.6. Executing PROC_DLATCH pass (convert process syncs to latches).

3.7. Executing PROC_DFF pass (convert process syncs to FFs).
Creating register for signal `\fifo_non_fsm.\read_ptr' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $adff cell `$procdff$2753' with positive edge clock and positive level reset.
Creating register for signal `\fifo_non_fsm.\Data_out' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $adff cell `$procdff$2754' with positive edge clock and positive level reset.
Creating register for signal `\fifo_non_fsm.\write_ptr' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $adff cell `$procdff$2755' with positive edge clock and positive level reset.
Creating register for signal `\fifo_non_fsm.\ptr_gap' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $adff cell `$procdff$2756' with positive edge clock and positive level reset.
Creating register for signal `\fifo_non_fsm.\stack[0]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2757' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[1]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2758' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[2]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2759' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[3]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2760' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[4]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2761' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[5]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2762' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[6]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2763' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[7]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2764' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[8]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2765' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[9]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2766' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[10]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2767' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[11]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2768' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[12]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2769' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[13]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2770' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[14]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2771' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[15]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2772' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[16]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2773' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[17]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2774' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[18]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2775' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[19]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2776' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[20]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2777' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[21]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2778' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[22]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2779' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[23]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2780' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[24]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2781' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[25]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2782' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[26]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2783' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[27]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2784' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[28]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2785' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[29]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2786' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[30]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2787' with positive edge clock.
Creating register for signal `\fifo_non_fsm.\stack[31]' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $dff cell `$procdff$2788' with positive edge clock.
Creating register for signal `\fifo_non_fsm.$mem2reg_wr$\stack$fifo_non_fsm.v:55$1_ADDR' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $adff cell `$procdff$2789' with positive edge clock and positive level reset.
Creating register for signal `\fifo_non_fsm.$mem2reg_wr$\stack$fifo_non_fsm.v:55$1_DATA' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $adff cell `$procdff$2790' with positive edge clock and positive level reset.
Creating register for signal `\fifo_non_fsm.$mem2reg_rd$\stack$fifo_non_fsm.v:62$2_ADDR' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $adff cell `$procdff$2791' with positive edge clock and positive level reset.
Creating register for signal `\fifo_non_fsm.$mem2reg_rd$\stack$fifo_non_fsm.v:62$2_DATA' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $adff cell `$procdff$2792' with positive edge clock and positive level reset.
Creating register for signal `\fifo_non_fsm.$mem2reg_wr$\stack$fifo_non_fsm.v:69$3_ADDR' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $adff cell `$procdff$2793' with positive edge clock and positive level reset.
Creating register for signal `\fifo_non_fsm.$mem2reg_wr$\stack$fifo_non_fsm.v:69$3_DATA' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $adff cell `$procdff$2794' with positive edge clock and positive level reset.
Creating register for signal `\fifo_non_fsm.$mem2reg_rd$\stack$fifo_non_fsm.v:76$4_ADDR' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $adff cell `$procdff$2795' with positive edge clock and positive level reset.
Creating register for signal `\fifo_non_fsm.$mem2reg_rd$\stack$fifo_non_fsm.v:76$4_DATA' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $adff cell `$procdff$2796' with positive edge clock and positive level reset.
Creating register for signal `\fifo_non_fsm.$mem2reg_rd$\stack$fifo_non_fsm.v:83$5_ADDR' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $adff cell `$procdff$2797' with positive edge clock and positive level reset.
Creating register for signal `\fifo_non_fsm.$mem2reg_rd$\stack$fifo_non_fsm.v:83$5_DATA' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $adff cell `$procdff$2798' with positive edge clock and positive level reset.
Creating register for signal `\fifo_non_fsm.$mem2reg_wr$\stack$fifo_non_fsm.v:84$6_ADDR' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $adff cell `$procdff$2799' with positive edge clock and positive level reset.
Creating register for signal `\fifo_non_fsm.$mem2reg_wr$\stack$fifo_non_fsm.v:84$6_DATA' using process `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
  created $adff cell `$procdff$2800' with positive edge clock and positive level reset.

3.8. Executing PROC_CLEAN pass (remove empty switches from decision trees).
Found and cleaned up 11 empty switches in `\fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
Removing empty process `fifo_non_fsm.$proc$fifo_non_fsm.v:43$9'.
Cleaned up 11 empty switches.
[?2004h
yosys> procshow -format svg -prefix original_non_fsm fifo_non_fsm[C[1P[1P[1P[1P[1P[1P[1P[1P[1@p[1@r[1@o[1@c[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C
[?2004l
4. Generating Graphviz representation of design.
Writing dot description to `proc_non_fsm.dot'.
Dumping module fifo_non_fsm to page 1.
Exec: dot -Tsvg 'proc_non_fsm.dot' > 'proc_non_fsm.svg.new' && mv 'proc_non_fsm.svg.new' 'proc_non_fsm.svg'
[?2004h
yosys> opt_muxtree
[?2004l
5. Executing OPT_MUXTREE pass (detect dead branches in mux trees).
Running muxtree optimizer on module \fifo_non_fsm..
  Creating internal representation of mux trees.
  Evaluating internal representation of mux trees.
  Analyzing evaluation results.
    dead port 1/2 on $mux $procmux$534.
    dead port 2/2 on $mux $procmux$534.
    dead port 1/2 on $mux $procmux$531.
    dead port 2/2 on $mux $procmux$531.
    dead port 1/2 on $mux $procmux$528.
    dead port 2/2 on $mux $procmux$528.
    dead port 1/2 on $mux $procmux$525.
    dead port 2/2 on $mux $procmux$525.
    dead port 1/2 on $mux $procmux$522.
    dead port 2/2 on $mux $procmux$522.
    dead port 1/2 on $mux $procmux$519.
    dead port 2/2 on $mux $procmux$519.
    dead port 1/2 on $mux $procmux$516.
    dead port 2/2 on $mux $procmux$516.
    dead port 1/2 on $mux $procmux$513.
    dead port 2/2 on $mux $procmux$513.
    dead port 1/2 on $mux $procmux$510.
    dead port 2/2 on $mux $procmux$510.
    dead port 1/2 on $mux $procmux$507.
    dead port 2/2 on $mux $procmux$507.
    dead port 1/2 on $mux $procmux$504.
    dead port 2/2 on $mux $procmux$504.
    dead port 1/2 on $mux $procmux$501.
    dead port 2/2 on $mux $procmux$501.
    dead port 1/2 on $mux $procmux$498.
    dead port 2/2 on $mux $procmux$498.
    dead port 1/2 on $mux $procmux$495.
    dead port 2/2 on $mux $procmux$495.
    dead port 1/2 on $mux $procmux$492.
    dead port 2/2 on $mux $procmux$492.
    dead port 1/2 on $mux $procmux$489.
    dead port 2/2 on $mux $procmux$489.
    dead port 1/2 on $mux $procmux$486.
    dead port 2/2 on $mux $procmux$486.
    dead port 1/2 on $mux $procmux$483.
    dead port 2/2 on $mux $procmux$483.
    dead port 1/2 on $mux $procmux$480.
    dead port 2/2 on $mux $procmux$480.
    dead port 1/2 on $mux $procmux$477.
    dead port 2/2 on $mux $procmux$477.
    dead port 1/2 on $mux $procmux$474.
    dead port 2/2 on $mux $procmux$474.
    dead port 1/2 on $mux $procmux$471.
    dead port 2/2 on $mux $procmux$471.
    dead port 1/2 on $mux $procmux$468.
    dead port 2/2 on $mux $procmux$468.
    dead port 1/2 on $mux $procmux$465.
    dead port 2/2 on $mux $procmux$465.
    dead port 1/2 on $mux $procmux$462.
    dead port 2/2 on $mux $procmux$462.
    dead port 1/2 on $mux $procmux$459.
    dead port 2/2 on $mux $procmux$459.
    dead port 1/2 on $mux $procmux$456.
    dead port 2/2 on $mux $procmux$456.
    dead port 1/2 on $mux $procmux$453.
    dead port 2/2 on $mux $procmux$453.
    dead port 1/2 on $mux $procmux$450.
    dead port 2/2 on $mux $procmux$450.
    dead port 1/2 on $mux $procmux$447.
    dead port 2/2 on $mux $procmux$447.
    dead port 1/2 on $mux $procmux$444.
    dead port 2/2 on $mux $procmux$444.
    dead port 1/2 on $mux $procmux$441.
    dead port 2/2 on $mux $procmux$441.
    dead port 1/2 on $mux $procmux$438.
    dead port 2/2 on $mux $procmux$435.
    dead port 1/2 on $mux $procmux$399.
    dead port 2/2 on $mux $procmux$399.
    dead port 1/2 on $mux $procmux$396.
    dead port 2/2 on $mux $procmux$396.
    dead port 1/2 on $mux $procmux$393.
    dead port 2/2 on $mux $procmux$393.
    dead port 1/2 on $mux $procmux$390.
    dead port 2/2 on $mux $procmux$390.
    dead port 1/2 on $mux $procmux$387.
    dead port 2/2 on $mux $procmux$387.
    dead port 1/2 on $mux $procmux$384.
    dead port 2/2 on $mux $procmux$384.
    dead port 1/2 on $mux $procmux$381.
    dead port 2/2 on $mux $procmux$381.
    dead port 1/2 on $mux $procmux$378.
    dead port 2/2 on $mux $procmux$378.
    dead port 1/2 on $mux $procmux$375.
    dead port 2/2 on $mux $procmux$375.
    dead port 1/2 on $mux $procmux$372.
    dead port 2/2 on $mux $procmux$372.
    dead port 1/2 on $mux $procmux$369.
    dead port 2/2 on $mux $procmux$369.
    dead port 1/2 on $mux $procmux$366.
    dead port 2/2 on $mux $procmux$366.
    dead port 1/2 on $mux $procmux$363.
    dead port 2/2 on $mux $procmux$363.
    dead port 1/2 on $mux $procmux$360.
    dead port 2/2 on $mux $procmux$360.
    dead port 1/2 on $mux $procmux$357.
    dead port 2/2 on $mux $procmux$357.
    dead port 1/2 on $mux $procmux$354.
    dead port 2/2 on $mux $procmux$354.
    dead port 1/2 on $mux $procmux$351.
    dead port 2/2 on $mux $procmux$351.
    dead port 1/2 on $mux $procmux$348.
    dead port 2/2 on $mux $procmux$348.
    dead port 1/2 on $mux $procmux$345.
    dead port 2/2 on $mux $procmux$345.
    dead port 1/2 on $mux $procmux$342.
    dead port 2/2 on $mux $procmux$342.
    dead port 1/2 on $mux $procmux$339.
    dead port 2/2 on $mux $procmux$339.
    dead port 1/2 on $mux $procmux$336.
    dead port 2/2 on $mux $procmux$336.
    dead port 1/2 on $mux $procmux$333.
    dead port 2/2 on $mux $procmux$333.
    dead port 1/2 on $mux $procmux$330.
    dead port 2/2 on $mux $procmux$330.
    dead port 1/2 on $mux $procmux$327.
    dead port 2/2 on $mux $procmux$327.
    dead port 1/2 on $mux $procmux$324.
    dead port 2/2 on $mux $procmux$324.
    dead port 1/2 on $mux $procmux$321.
    dead port 2/2 on $mux $procmux$321.
    dead port 1/2 on $mux $procmux$318.
    dead port 2/2 on $mux $procmux$318.
    dead port 1/2 on $mux $procmux$315.
    dead port 2/2 on $mux $procmux$315.
    dead port 1/2 on $mux $procmux$312.
    dead port 2/2 on $mux $procmux$312.
    dead port 1/2 on $mux $procmux$309.
    dead port 2/2 on $mux $procmux$309.
    dead port 1/2 on $mux $procmux$306.
    dead port 2/2 on $mux $procmux$306.
    dead port 1/2 on $mux $procmux$303.
    dead port 2/2 on $mux $procmux$303.
    dead port 1/2 on $mux $procmux$300.
    dead port 2/2 on $mux $procmux$300.
    dead port 1/2 on $mux $procmux$297.
    dead port 2/2 on $mux $procmux$297.
    dead port 1/2 on $mux $procmux$294.
    dead port 2/2 on $mux $procmux$294.
    dead port 1/2 on $mux $procmux$291.
    dead port 2/2 on $mux $procmux$291.
    dead port 1/2 on $mux $procmux$288.
    dead port 2/2 on $mux $procmux$288.
    dead port 1/2 on $mux $procmux$285.
    dead port 2/2 on $mux $procmux$285.
    dead port 1/2 on $mux $procmux$282.
    dead port 2/2 on $mux $procmux$282.
    dead port 1/2 on $mux $procmux$279.
    dead port 2/2 on $mux $procmux$279.
    dead port 1/2 on $mux $procmux$276.
    dead port 2/2 on $mux $procmux$276.
    dead port 1/2 on $mux $procmux$273.
    dead port 2/2 on $mux $procmux$273.
    dead port 1/2 on $mux $procmux$270.
    dead port 2/2 on $mux $procmux$270.
    dead port 1/2 on $mux $procmux$267.
    dead port 2/2 on $mux $procmux$267.
    dead port 1/2 on $mux $procmux$264.
    dead port 2/2 on $mux $procmux$264.
    dead port 1/2 on $mux $procmux$261.
    dead port 2/2 on $mux $procmux$261.
    dead port 1/2 on $mux $procmux$258.
    dead port 2/2 on $mux $procmux$258.
    dead port 1/2 on $mux $procmux$255.
    dead port 1/2 on $mux $procmux$252.
    dead port 1/2 on $mux $procmux$249.
    dead port 2/2 on $mux $procmux$246.
    dead port 1/2 on $mux $procmux$210.
    dead port 2/2 on $mux $procmux$210.
    dead port 1/2 on $mux $procmux$207.
    dead port 2/2 on $mux $procmux$207.
    dead port 1/2 on $mux $procmux$204.
    dead port 2/2 on $mux $procmux$204.
    dead port 1/2 on $mux $procmux$201.
    dead port 2/2 on $mux $procmux$201.
    dead port 1/2 on $mux $procmux$198.
    dead port 2/2 on $mux $procmux$198.
    dead port 1/2 on $mux $procmux$195.
    dead port 2/2 on $mux $procmux$195.
    dead port 1/2 on $mux $procmux$192.
    dead port 2/2 on $mux $procmux$192.
    dead port 1/2 on $mux $procmux$189.
    dead port 2/2 on $mux $procmux$189.
    dead port 1/2 on $mux $procmux$186.
    dead port 2/2 on $mux $procmux$186.
    dead port 1/2 on $mux $procmux$183.
    dead port 2/2 on $mux $procmux$183.
    dead port 1/2 on $mux $procmux$180.
    dead port 2/2 on $mux $procmux$180.
    dead port 1/2 on $mux $procmux$177.
    dead port 2/2 on $mux $procmux$177.
    dead port 1/2 on $mux $procmux$174.
    dead port 2/2 on $mux $procmux$174.
    dead port 1/2 on $mux $procmux$171.
    dead port 2/2 on $mux $procmux$171.
    dead port 1/2 on $mux $procmux$168.
    dead port 2/2 on $mux $procmux$168.
    dead port 1/2 on $mux $procmux$165.
    dead port 2/2 on $mux $procmux$165.
    dead port 1/2 on $mux $procmux$162.
    dead port 2/2 on $mux $procmux$162.
    dead port 1/2 on $mux $procmux$159.
    dead port 2/2 on $mux $procmux$159.
    dead port 1/2 on $mux $procmux$156.
    dead port 2/2 on $mux $procmux$156.
    dead port 1/2 on $mux $procmux$153.
    dead port 2/2 on $mux $procmux$153.
    dead port 1/2 on $mux $procmux$150.
    dead port 1/2 on $mux $procmux$147.
    dead port 1/2 on $mux $procmux$144.
    dead port 1/2 on $mux $procmux$141.
    dead port 2/2 on $mux $procmux$138.
Removed 211 multiplexer ports.
<suppressed ~39 debug messages>
[?2004h
yosys> opt_muxtree[C[C[C[C[C[C[Cshow -format svg -prefix proc_non_fsm fifo_non_fsm[1P[1P[1P[1P[1@o[1@p[1@t[C[1@_[1@m[1@u[1@x[1@t[1@r[1@e[1@e[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C
[?2004l
6. Generating Graphviz representation of design.
Writing dot description to `opt_muxtree_non_fsm.dot'.
Dumping module fifo_non_fsm to page 1.
Exec: dot -Tsvg 'opt_muxtree_non_fsm.dot' > 'opt_muxtree_non_fsm.svg.new' && mv 'opt_muxtree_non_fsm.svg.new' 'opt_muxtree_non_fsm.svg'
[?2004h
yosys> show -format svg -prefix opt_muxtree_non_fsm fifo_non_fsm[C[C[C[C[C[C[Copt_muxtree[K[K[K[K[K[K[K[Kexpr
[?2004l
7. Executing OPT_EXPR pass (perform const folding).
Optimizing module fifo_non_fsm.
<suppressed ~7 debug messages>
[?2004h
yosys> opt_exprshow -format svg -prefix opt_muxtree_non_fsm fifo_non_fsm[1P[1P[1P[1P[1P[1P[C[1@x[1@p[1@r[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C
[?2004l
8. Generating Graphviz representation of design.
Writing dot description to `opt_expr_non_fsm.dot'.
Dumping module fifo_non_fsm to page 1.
Exec: dot -Tsvg 'opt_expr_non_fsm.dot' > 'opt_expr_non_fsm.svg.new' && mv 'opt_expr_non_fsm.svg.new' 'opt_expr_non_fsm.svg'
[?2004h
yosys> show -format svg -prefix opt_expr_non_fsm fifo_non_fsm[C[C[C[C[C[C[Copt_expr[K[K[K[K[Kmerge
[?2004l
9. Executing OPT_MERGE pass (detect identical cells).
Finding identical cells in module `\fifo_non_fsm'.
<suppressed ~642 debug messages>
Removed a total of 214 cells.
[?2004h
yosys> opt_merge[C[C[C[C[C[C[Cshow -format svg -prefix opt_expr_non_fsm fifo_non_fsm[C[C[C[C[C[C[Copt_expr[Kshow -format svg -prefix opt_expr_non_fsm fifo_non_fsm[C[1P[1P[1P[1P[1@m[1@e[1@r[1@g[1@e[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C
[?2004l
10. Generating Graphviz representation of design.
Writing dot description to `opt_merge_non_fsm.dot'.
Dumping module fifo_non_fsm to page 1.
Exec: dot -Tsvg 'opt_merge_non_fsm.dot' > 'opt_merge_non_fsm.svg.new' && mv 'opt_merge_non_fsm.svg.new' 'opt_merge_non_fsm.svg'
[?2004h
yosys> show -format svg -prefix opt_merge_non_fsm fifo_non_fsm[C[C[C[C[C[C[Copt_merge[K[K[K[K[K[Krmdff
[?2004l
11. Executing OPT_RMDFF pass (remove dff with constant values).
Removing $procdff$2800 ($adff) from module fifo_non_fsm.
Removing $procdff$2799 ($adff) from module fifo_non_fsm.
Replaced 2 DFF cells.
[?2004h
yosys> opt_rmdff[C[C[C[C[C[C[Cshow -format svg -prefix opt_merge_non_fsm fifo_non_fsm[1P[1P[1P[1P[1P[1@r[1@m[1@d[1@f[1@f[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C
[?2004l
12. Generating Graphviz representation of design.
Writing dot description to `opt_rmdff_non_fsm.dot'.
Dumping module fifo_non_fsm to page 1.
Exec: dot -Tsvg 'opt_rmdff_non_fsm.dot' > 'opt_rmdff_non_fsm.svg.new' && mv 'opt_rmdff_non_fsm.svg.new' 'opt_rmdff_non_fsm.svg'
[?2004h
yosys> opt_clean
[?2004l
13. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \fifo_non_fsm..
Removed 0 unused cells and 722 unused wires.
<suppressed ~1 debug messages>
[?2004h
yosys> opt_clean[C[C[C[C[C[C[Cshow -format svg -prefix opt_rmdff_non_fsm fifo_non_fsm[1P[1P[1P[1P[1P[1@c[1@l[1@e[1@a[1@n[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C
[?2004l
14. Generating Graphviz representation of design.
Writing dot description to `opt_clean_non_fsm.dot'.
Dumping module fifo_non_fsm to page 1.
Exec: dot -Tsvg 'opt_clean_non_fsm.dot' > 'opt_clean_non_fsm.svg.new' && mv 'opt_clean_non_fsm.svg.new' 'opt_clean_non_fsm.svg'
[?2004h
yosys> memory
[?2004l
15. Executing MEMORY pass.

15.1. Executing MEMORY_DFF pass (merging $dff cells to $memrd and $memwr).

15.2. Executing OPT_CLEAN pass (remove unused cells and wires).
Finding unused cells or wires in module \fifo_non_fsm..

15.3. Executing MEMORY_SHARE pass (consolidating 