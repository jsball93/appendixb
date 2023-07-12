//3D half space problem mesh for ResIPy - no topography
Mesh.Binary = 0;//specify we want ASCII format
cl=0.35;//define characteristic length for fine mesh region
//Fine mesh region.
Point (1) = {732.19,98.64,0.00, cl*20};
Point (2) = {732.19,-16.44,0.00, cl*20};
Point (3) = {-122.03,-16.44,0.00, cl*20};
Point (4) = {-122.03,98.64,0.00, cl*20};
Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,1};
cl2=cl*15.00;//define characteristic length for base of fine mesh region
Point (5) = {732.19,98.64,-50.00, cl2};
Point (6) = {732.19,-16.44,-50.00, cl2};
Point (7) = {-122.03,-16.44,-50.00, cl2};
Point (8) = {-122.03,98.64,-50.00, cl2};
Line(5) = {5,6};
Line(6) = {6,7};
Line(7) = {7,8};
Line(8) = {8,5};
Line(9) = {1,5};
Line(10) = {2,6};
Line(11) = {3,7};
Line(12) = {4,8};
//End fine mesh region points
//Neumannn boundary points
cln = 87.50;//characteristic length for background region
Point (9) = {1782.19,1148.64,0.00, cln};
Point (10) = {1782.19,-1066.44,0.00, cln};
Point (11) = {-1172.03,-1066.44,0.00, cln};
Point (12) = {-1172.03,1148.64,0.00, cln};
Line(13) = {9,10};
Line(14) = {10,11};
Line(15) = {11,12};
Line(16) = {12,9};
Point (13) = {1782.19,1148.64,-1100.00, cln};
Point (14) = {1782.19,-1066.44,-1100.00, cln};
Point (15) = {-1172.03,-1066.44,-1100.00, cln};
Point (16) = {-1172.03,1148.64,-1100.00, cln};
Line(17) = {13,14};
Line(18) = {14,15};
Line(19) = {15,16};
Line(20) = {16,13};
Line(21) = {9,13};
Line(22) = {10,14};
Line(23) = {11,15};
Line(24) = {12,16};
//End of nuemmon boundary points
Line Loop(1) = {1,2,3,4};
Line Loop(2) = {13,14,15,16};
Plane Surface(1) = {1};
Plane Surface(2) = {2,1};
//Below ground fine mesh surfaces
Line Loop(3) = {5,6,7,8};
Line Loop(4) = {5,-10,-1,9};
Line Loop(5) = {11,-6,-10,2};
Line Loop(6) = {11,7,-12,-3};
Line Loop(7) = {8,-9,-4,12};
Plane Surface(3) = {3};
Plane Surface(4) = {4};
Plane Surface(5) = {5};
Plane Surface(6) = {6};
Plane Surface(7) = {7};
Surface Loop (1) = {1,3,4,5,6,7};
Volume(1) = {1};//End Fine mesh region surfaces.
//Below ground background surfaces
Line Loop(8) = {20, 17, 18, 19};
Line Loop(9) = {24, -19, -23, 15};
Line Loop(10) = {16, 21, -20, -24};
Line Loop(11) = {17, -22, -13, 21};
Line Loop(12) = {18, -23, -14, 22};
Plane Surface(8) = {8};
Plane Surface(9) = {9};
Plane Surface(10) = {10};
Plane Surface(11) = {11};
Plane Surface(12) = {12};
Surface Loop (2) = {2,3,4,5,6,7,8,9,10,11,12};
Volume(2) = {2};//End background mesh surfaces
//Electrode positions.
Point (17) = {0.00,0.00,0.00, 0.875};
Point{17} In Surface{1};//surface electrode
Point (18) = {2.91,1.85,0.00, 0.875};
Point{18} In Surface{1};//surface electrode
Point (19) = {5.80,3.76,0.00, 0.875};
Point{19} In Surface{1};//surface electrode
Point (20) = {8.62,5.83,0.00, 0.875};
Point{20} In Surface{1};//surface electrode
Point (21) = {11.39,8.01,0.00, 0.875};
Point{21} In Surface{1};//surface electrode
Point (22) = {14.10,10.15,0.00, 0.875};
Point{22} In Surface{1};//surface electrode
Point (23) = {16.93,12.17,0.00, 0.875};
Point{23} In Surface{1};//surface electrode
Point (24) = {19.79,14.29,0.00, 0.875};
Point{24} In Surface{1};//surface electrode
Point (25) = {22.57,16.43,0.00, 0.875};
Point{25} In Surface{1};//surface electrode
Point (26) = {25.45,18.40,0.00, 0.875};
Point{26} In Surface{1};//surface electrode
Point (27) = {28.41,20.18,0.00, 0.875};
Point{27} In Surface{1};//surface electrode
Point (28) = {31.32,22.16,0.00, 0.875};
Point{28} In Surface{1};//surface electrode
Point (29) = {34.15,24.20,0.00, 0.875};
Point{29} In Surface{1};//surface electrode
Point (30) = {36.96,26.36,0.00, 0.875};
Point{30} In Surface{1};//surface electrode
Point (31) = {39.70,28.51,0.00, 0.875};
Point{31} In Surface{1};//surface electrode
Point (32) = {42.44,30.72,0.00, 0.875};
Point{32} In Surface{1};//surface electrode
Point (33) = {45.20,32.74,0.00, 0.875};
Point{33} In Surface{1};//surface electrode
Point (34) = {48.13,34.75,0.00, 0.875};
Point{34} In Surface{1};//surface electrode
Point (35) = {51.00,36.72,0.00, 0.875};
Point{35} In Surface{1};//surface electrode
Point (36) = {53.89,38.67,0.00, 0.875};
Point{36} In Surface{1};//surface electrode
Point (37) = {56.74,40.69,0.00, 0.875};
Point{37} In Surface{1};//surface electrode
Point (38) = {59.47,42.71,0.00, 0.875};
Point{38} In Surface{1};//surface electrode
Point (39) = {62.52,44.59,0.00, 0.875};
Point{39} In Surface{1};//surface electrode
Point (40) = {65.31,46.65,0.00, 0.875};
Point{40} In Surface{1};//surface electrode
Point (41) = {68.44,48.05,0.00, 0.875};
Point{41} In Surface{1};//surface electrode
Point (42) = {72.00,48.32,0.00, 0.875};
Point{42} In Surface{1};//surface electrode
Point (43) = {75.42,48.71,0.00, 0.875};
Point{43} In Surface{1};//surface electrode
Point (44) = {78.88,49.02,0.00, 0.875};
Point{44} In Surface{1};//surface electrode
Point (45) = {82.39,49.32,0.00, 0.875};
Point{45} In Surface{1};//surface electrode
Point (46) = {85.85,49.58,0.00, 0.875};
Point{46} In Surface{1};//surface electrode
Point (47) = {89.38,49.63,0.00, 0.875};
Point{47} In Surface{1};//surface electrode
Point (48) = {92.83,49.53,0.00, 0.875};
Point{48} In Surface{1};//surface electrode
Point (49) = {96.33,49.45,0.00, 0.875};
Point{49} In Surface{1};//surface electrode
Point (50) = {99.86,49.37,0.00, 0.875};
Point{50} In Surface{1};//surface electrode
Point (51) = {103.36,49.31,0.00, 0.875};
Point{51} In Surface{1};//surface electrode
Point (52) = {106.83,49.23,0.00, 0.875};
Point{52} In Surface{1};//surface electrode
Point (53) = {110.31,49.20,0.00, 0.875};
Point{53} In Surface{1};//surface electrode
Point (54) = {113.80,49.12,0.00, 0.875};
Point{54} In Surface{1};//surface electrode
Point (55) = {117.33,49.12,0.00, 0.875};
Point{55} In Surface{1};//surface electrode
Point (56) = {120.87,48.98,0.00, 0.875};
Point{56} In Surface{1};//surface electrode
Point (57) = {124.33,48.79,0.00, 0.875};
Point{57} In Surface{1};//surface electrode
Point (58) = {127.84,48.60,0.00, 0.875};
Point{58} In Surface{1};//surface electrode
Point (59) = {131.33,48.40,0.00, 0.875};
Point{59} In Surface{1};//surface electrode
Point (60) = {134.79,48.25,0.00, 0.875};
Point{60} In Surface{1};//surface electrode
Point (61) = {138.29,48.08,0.00, 0.875};
Point{61} In Surface{1};//surface electrode
Point (62) = {141.82,48.04,0.00, 0.875};
Point{62} In Surface{1};//surface electrode
Point (63) = {145.28,47.84,0.00, 0.875};
Point{63} In Surface{1};//surface electrode
Point (64) = {148.78,47.73,0.00, 0.875};
Point{64} In Surface{1};//surface electrode
Point (65) = {152.25,47.61,0.00, 0.875};
Point{65} In Surface{1};//surface electrode
Point (66) = {155.74,47.48,0.00, 0.875};
Point{66} In Surface{1};//surface electrode
Point (67) = {159.25,47.34,0.00, 0.875};
Point{67} In Surface{1};//surface electrode
Point (68) = {162.80,47.15,0.00, 0.875};
Point{68} In Surface{1};//surface electrode
Point (69) = {166.27,46.98,0.00, 0.875};
Point{69} In Surface{1};//surface electrode
Point (70) = {169.75,46.83,0.00, 0.875};
Point{70} In Surface{1};//surface electrode
Point (71) = {173.30,46.68,0.00, 0.875};
Point{71} In Surface{1};//surface electrode
Point (72) = {176.77,46.58,0.00, 0.875};
Point{72} In Surface{1};//surface electrode
Point (73) = {180.25,46.45,0.00, 0.875};
Point{73} In Surface{1};//surface electrode
Point (74) = {183.71,46.17,0.00, 0.875};
Point{74} In Surface{1};//surface electrode
Point (75) = {187.20,45.74,0.00, 0.875};
Point{75} In Surface{1};//surface electrode
Point (76) = {190.67,45.21,0.00, 0.875};
Point{76} In Surface{1};//surface electrode
Point (77) = {194.15,44.69,0.00, 0.875};
Point{77} In Surface{1};//surface electrode
Point (78) = {197.55,44.23,0.00, 0.875};
Point{78} In Surface{1};//surface electrode
Point (79) = {200.96,43.40,0.00, 0.875};
Point{79} In Surface{1};//surface electrode
Point (80) = {204.24,42.43,0.00, 0.875};
Point{80} In Surface{1};//surface electrode
Point (81) = {207.54,41.15,0.00, 0.875};
Point{81} In Surface{1};//surface electrode
Point (82) = {210.76,39.79,0.00, 0.875};
Point{82} In Surface{1};//surface electrode
Point (83) = {214.01,38.32,0.00, 0.875};
Point{83} In Surface{1};//surface electrode
Point (84) = {217.27,37.04,0.00, 0.875};
Point{84} In Surface{1};//surface electrode
Point (85) = {220.65,35.96,0.00, 0.875};
Point{85} In Surface{1};//surface electrode
Point (86) = {223.99,35.04,0.00, 0.875};
Point{86} In Surface{1};//surface electrode
Point (87) = {227.39,34.31,0.00, 0.875};
Point{87} In Surface{1};//surface electrode
Point (88) = {230.82,33.66,0.00, 0.875};
Point{88} In Surface{1};//surface electrode
Point (89) = {234.32,33.17,0.00, 0.875};
Point{89} In Surface{1};//surface electrode
Point (90) = {237.76,32.56,0.00, 0.875};
Point{90} In Surface{1};//surface electrode
Point (91) = {241.17,31.97,0.00, 0.875};
Point{91} In Surface{1};//surface electrode
Point (92) = {244.66,31.49,0.00, 0.875};
Point{92} In Surface{1};//surface electrode
Point (93) = {248.08,31.25,0.00, 0.875};
Point{93} In Surface{1};//surface electrode
Point (94) = {251.62,31.08,0.00, 0.875};
Point{94} In Surface{1};//surface electrode
Point (95) = {255.16,30.90,0.00, 0.875};
Point{95} In Surface{1};//surface electrode
Point (96) = {258.65,30.51,0.00, 0.875};
Point{96} In Surface{1};//surface electrode
Point (97) = {262.10,30.34,0.00, 0.875};
Point{97} In Surface{1};//surface electrode
Point (98) = {265.58,30.17,0.00, 0.875};
Point{98} In Surface{1};//surface electrode
Point (99) = {269.12,30.06,0.00, 0.875};
Point{99} In Surface{1};//surface electrode
Point (100) = {272.59,29.99,0.00, 0.875};
Point{100} In Surface{1};//surface electrode
Point (101) = {276.08,29.89,0.00, 0.875};
Point{101} In Surface{1};//surface electrode
Point (102) = {279.57,29.84,0.00, 0.875};
Point{102} In Surface{1};//surface electrode
Point (103) = {283.08,29.73,0.00, 0.875};
Point{103} In Surface{1};//surface electrode
Point (104) = {286.56,29.56,0.00, 0.875};
Point{104} In Surface{1};//surface electrode
Point (105) = {290.05,29.43,0.00, 0.875};
Point{105} In Surface{1};//surface electrode
Point (106) = {293.56,29.23,0.00, 0.875};
Point{106} In Surface{1};//surface electrode
Point (107) = {297.02,29.04,0.00, 0.875};
Point{107} In Surface{1};//surface electrode
Point (108) = {300.54,28.83,0.00, 0.875};
Point{108} In Surface{1};//surface electrode
Point (109) = {304.06,28.66,0.00, 0.875};
Point{109} In Surface{1};//surface electrode
Point (110) = {307.51,28.56,0.00, 0.875};
Point{110} In Surface{1};//surface electrode
Point (111) = {311.00,28.35,0.00, 0.875};
Point{111} In Surface{1};//surface electrode
Point (112) = {314.49,28.08,0.00, 0.875};
Point{112} In Surface{1};//surface electrode
Point (113) = {317.96,27.87,0.00, 0.875};
Point{113} In Surface{1};//surface electrode
Point (114) = {321.48,27.78,0.00, 0.875};
Point{114} In Surface{1};//surface electrode
Point (115) = {324.99,27.64,0.00, 0.875};
Point{115} In Surface{1};//surface electrode
Point (116) = {328.50,27.54,0.00, 0.875};
Point{116} In Surface{1};//surface electrode
Point (117) = {331.96,27.46,0.00, 0.875};
Point{117} In Surface{1};//surface electrode
Point (118) = {335.47,27.34,0.00, 0.875};
Point{118} In Surface{1};//surface electrode
Point (119) = {338.96,27.17,0.00, 0.875};
Point{119} In Surface{1};//surface electrode
Point (120) = {342.48,27.11,0.00, 0.875};
Point{120} In Surface{1};//surface electrode
Point (121) = {345.97,27.04,0.00, 0.875};
Point{121} In Surface{1};//surface electrode
Point (122) = {349.46,27.15,0.00, 0.875};
Point{122} In Surface{1};//surface electrode
Point (123) = {352.94,27.28,0.00, 0.875};
Point{123} In Surface{1};//surface electrode
Point (124) = {356.40,27.58,0.00, 0.875};
Point{124} In Surface{1};//surface electrode
Point (125) = {359.86,28.20,0.00, 0.875};
Point{125} In Surface{1};//surface electrode
Point (126) = {363.28,28.99,0.00, 0.875};
Point{126} In Surface{1};//surface electrode
Point (127) = {366.68,29.76,0.00, 0.875};
Point{127} In Surface{1};//surface electrode
Point (128) = {370.03,30.70,0.00, 0.875};
Point{128} In Surface{1};//surface electrode
Point (129) = {373.36,31.72,0.00, 0.875};
Point{129} In Surface{1};//surface electrode
Point (130) = {376.83,32.60,0.00, 0.875};
Point{130} In Surface{1};//surface electrode
Point (131) = {380.03,33.92,0.00, 0.875};
Point{131} In Surface{1};//surface electrode
Point (132) = {383.53,34.40,0.00, 0.875};
Point{132} In Surface{1};//surface electrode
Point (133) = {386.94,34.60,0.00, 0.875};
Point{133} In Surface{1};//surface electrode
Point (134) = {390.47,34.76,0.00, 0.875};
Point{134} In Surface{1};//surface electrode
Point (135) = {393.98,34.51,0.00, 0.875};
Point{135} In Surface{1};//surface electrode
Point (136) = {397.46,34.19,0.00, 0.875};
Point{136} In Surface{1};//surface electrode
Point (137) = {400.89,33.90,0.00, 0.875};
Point{137} In Surface{1};//surface electrode
Point (138) = {404.41,33.50,0.00, 0.875};
Point{138} In Surface{1};//surface electrode
Point (139) = {407.89,32.89,0.00, 0.875};
Point{139} In Surface{1};//surface electrode
Point (140) = {411.34,32.95,0.00, 0.875};
Point{140} In Surface{1};//surface electrode
Point (141) = {414.83,32.92,0.00, 0.875};
Point{141} In Surface{1};//surface electrode
Point (142) = {418.33,32.82,0.00, 0.875};
Point{142} In Surface{1};//surface electrode
Point (143) = {421.83,32.73,0.00, 0.875};
Point{143} In Surface{1};//surface electrode
Point (144) = {425.38,32.63,0.00, 0.875};
Point{144} In Surface{1};//surface electrode
Point (145) = {33.36,46.35,0.00, 0.875};
Point{145} In Surface{1};//surface electrode
Point (146) = {36.69,47.40,0.00, 0.875};
Point{146} In Surface{1};//surface electrode
Point (147) = {40.02,48.12,0.00, 0.875};
Point{147} In Surface{1};//surface electrode
Point (148) = {43.49,48.94,0.00, 0.875};
Point{148} In Surface{1};//surface electrode
Point (149) = {46.93,49.65,0.00, 0.875};
Point{149} In Surface{1};//surface electrode
Point (150) = {50.34,50.22,0.00, 0.875};
Point{150} In Surface{1};//surface electrode
Point (151) = {53.84,50.83,0.00, 0.875};
Point{151} In Surface{1};//surface electrode
Point (152) = {57.27,51.37,0.00, 0.875};
Point{152} In Surface{1};//surface electrode
Point (153) = {60.66,51.94,0.00, 0.875};
Point{153} In Surface{1};//surface electrode
Point (154) = {64.19,52.45,0.00, 0.875};
Point{154} In Surface{1};//surface electrode
Point (155) = {67.66,52.95,0.00, 0.875};
Point{155} In Surface{1};//surface electrode
Point (156) = {71.15,53.36,0.00, 0.875};
Point{156} In Surface{1};//surface electrode
Point (157) = {74.56,53.70,0.00, 0.875};
Point{157} In Surface{1};//surface electrode
Point (158) = {78.06,53.96,0.00, 0.875};
Point{158} In Surface{1};//surface electrode
Point (159) = {81.56,54.21,0.00, 0.875};
Point{159} In Surface{1};//surface electrode
Point (160) = {85.07,54.30,0.00, 0.875};
Point{160} In Surface{1};//surface electrode
Point (161) = {88.61,54.28,0.00, 0.875};
Point{161} In Surface{1};//surface electrode
Point (162) = {92.10,54.25,0.00, 0.875};
Point{162} In Surface{1};//surface electrode
Point (163) = {95.57,54.23,0.00, 0.875};
Point{163} In Surface{1};//surface electrode
Point (164) = {99.10,54.23,0.00, 0.875};
Point{164} In Surface{1};//surface electrode
Point (165) = {102.60,54.18,0.00, 0.875};
Point{165} In Surface{1};//surface electrode
Point (166) = {106.05,54.17,0.00, 0.875};
Point{166} In Surface{1};//surface electrode
Point (167) = {109.55,54.14,0.00, 0.875};
Point{167} In Surface{1};//surface electrode
Point (168) = {113.07,54.13,0.00, 0.875};
Point{168} In Surface{1};//surface electrode
Point (169) = {116.57,54.14,0.00, 0.875};
Point{169} In Surface{1};//surface electrode
Point (170) = {120.05,54.12,0.00, 0.875};
Point{170} In Surface{1};//surface electrode
Point (171) = {123.55,54.07,0.00, 0.875};
Point{171} In Surface{1};//surface electrode
Point (172) = {127.09,54.05,0.00, 0.875};
Point{172} In Surface{1};//surface electrode
Point (173) = {130.55,54.02,0.00, 0.875};
Point{173} In Surface{1};//surface electrode
Point (174) = {134.04,54.03,0.00, 0.875};
Point{174} In Surface{1};//surface electrode
Point (175) = {137.53,53.91,0.00, 0.875};
Point{175} In Surface{1};//surface electrode
Point (176) = {141.05,53.90,0.00, 0.875};
Point{176} In Surface{1};//surface electrode
Point (177) = {144.54,53.73,0.00, 0.875};
Point{177} In Surface{1};//surface electrode
Point (178) = {148.05,53.67,0.00, 0.875};
Point{178} In Surface{1};//surface electrode
Point (179) = {151.52,53.47,0.00, 0.875};
Point{179} In Surface{1};//surface electrode
Point (180) = {155.06,53.29,0.00, 0.875};
Point{180} In Surface{1};//surface electrode
Point (181) = {158.49,53.22,0.00, 0.875};
Point{181} In Surface{1};//surface electrode
Point (182) = {161.98,53.17,0.00, 0.875};
Point{182} In Surface{1};//surface electrode
Point (183) = {165.49,52.99,0.00, 0.875};
Point{183} In Surface{1};//surface electrode
Point (184) = {168.47,52.88,0.00, 0.875};
Point{184} In Surface{1};//surface electrode
Point (185) = {172.51,52.77,0.00, 0.875};
Point{185} In Surface{1};//surface electrode
Point (186) = {175.97,52.58,0.00, 0.875};
Point{186} In Surface{1};//surface electrode
Point (187) = {179.45,52.32,0.00, 0.875};
Point{187} In Surface{1};//surface electrode
Point (188) = {182.93,52.05,0.00, 0.875};
Point{188} In Surface{1};//surface electrode
Point (189) = {186.42,51.85,0.00, 0.875};
Point{189} In Surface{1};//surface electrode
Point (190) = {189.89,51.34,0.00, 0.875};
Point{190} In Surface{1};//surface electrode
Point (191) = {193.35,50.69,0.00, 0.875};
Point{191} In Surface{1};//surface electrode
Point (192) = {196.80,50.05,0.00, 0.875};
Point{192} In Surface{1};//surface electrode
Point (193) = {200.21,49.42,0.00, 0.875};
Point{193} In Surface{1};//surface electrode
Point (194) = {203.57,48.57,0.00, 0.875};
Point{194} In Surface{1};//surface electrode
Point (195) = {206.99,47.54,0.00, 0.875};
Point{195} In Surface{1};//surface electrode
Point (196) = {210.28,46.49,0.00, 0.875};
Point{196} In Surface{1};//surface electrode
Point (197) = {213.56,45.36,0.00, 0.875};
Point{197} In Surface{1};//surface electrode
Point (198) = {216.85,44.19,0.00, 0.875};
Point{198} In Surface{1};//surface electrode
Point (199) = {220.13,42.97,0.00, 0.875};
Point{199} In Surface{1};//surface electrode
Point (200) = {223.45,41.80,0.00, 0.875};
Point{200} In Surface{1};//surface electrode
Point (201) = {226.76,40.73,0.00, 0.875};
Point{201} In Surface{1};//surface electrode
Point (202) = {230.14,39.76,0.00, 0.875};
Point{202} In Surface{1};//surface electrode
Point (203) = {233.55,39.09,0.00, 0.875};
Point{203} In Surface{1};//surface electrode
Point (204) = {237.02,38.60,0.00, 0.875};
Point{204} In Surface{1};//surface electrode
Point (205) = {240.47,38.16,0.00, 0.875};
Point{205} In Surface{1};//surface electrode
Point (206) = {243.98,37.73,0.00, 0.875};
Point{206} In Surface{1};//surface electrode
Point (207) = {247.42,37.32,0.00, 0.875};
Point{207} In Surface{1};//surface electrode
Point (208) = {250.90,37.03,0.00, 0.875};
Point{208} In Surface{1};//surface electrode
Point (209) = {254.43,36.81,0.00, 0.875};
Point{209} In Surface{1};//surface electrode
Point (210) = {257.89,36.68,0.00, 0.875};
Point{210} In Surface{1};//surface electrode
Point (211) = {261.38,36.43,0.00, 0.875};
Point{211} In Surface{1};//surface electrode
Point (212) = {264.85,36.17,0.00, 0.875};
Point{212} In Surface{1};//surface electrode
Point (213) = {268.35,36.00,0.00, 0.875};
Point{213} In Surface{1};//surface electrode
Point (214) = {271.88,35.93,0.00, 0.875};
Point{214} In Surface{1};//surface electrode
Point (215) = {275.39,35.82,0.00, 0.875};
Point{215} In Surface{1};//surface electrode
Point (216) = {278.86,35.66,0.00, 0.875};
Point{216} In Surface{1};//surface electrode
Point (217) = {282.36,35.55,0.00, 0.875};
Point{217} In Surface{1};//surface electrode
Point (218) = {285.83,35.40,0.00, 0.875};
Point{218} In Surface{1};//surface electrode
Point (219) = {289.32,35.20,0.00, 0.875};
Point{219} In Surface{1};//surface electrode
Point (220) = {292.82,34.97,0.00, 0.875};
Point{220} In Surface{1};//surface electrode
Point (221) = {296.31,34.78,0.00, 0.875};
Point{221} In Surface{1};//surface electrode
Point (222) = {299.82,34.58,0.00, 0.875};
Point{222} In Surface{1};//surface electrode
Point (223) = {303.33,34.47,0.00, 0.875};
Point{223} In Surface{1};//surface electrode
Point (224) = {306.77,34.27,0.00, 0.875};
Point{224} In Surface{1};//surface electrode
Point (225) = {310.28,34.13,0.00, 0.875};
Point{225} In Surface{1};//surface electrode
Point (226) = {313.79,34.01,0.00, 0.875};
Point{226} In Surface{1};//surface electrode
Point (227) = {317.28,33.85,0.00, 0.875};
Point{227} In Surface{1};//surface electrode
Point (228) = {320.80,33.58,0.00, 0.875};
Point{228} In Surface{1};//surface electrode
Point (229) = {324.28,33.42,0.00, 0.875};
Point{229} In Surface{1};//surface electrode
Point (230) = {327.77,33.25,0.00, 0.875};
Point{230} In Surface{1};//surface electrode
Point (231) = {331.23,32.95,0.00, 0.875};
Point{231} In Surface{1};//surface electrode
Point (232) = {334.68,32.64,0.00, 0.875};
Point{232} In Surface{1};//surface electrode
Point (233) = {338.20,32.57,0.00, 0.875};
Point{233} In Surface{1};//surface electrode
Point (234) = {341.69,32.40,0.00, 0.875};
Point{234} In Surface{1};//surface electrode
Point (235) = {345.19,32.27,0.00, 0.875};
Point{235} In Surface{1};//surface electrode
Point (236) = {348.72,32.26,0.00, 0.875};
Point{236} In Surface{1};//surface electrode
Point (237) = {352.19,32.48,0.00, 0.875};
Point{237} In Surface{1};//surface electrode
Point (238) = {355.67,32.91,0.00, 0.875};
Point{238} In Surface{1};//surface electrode
Point (239) = {359.11,33.26,0.00, 0.875};
Point{239} In Surface{1};//surface electrode
Point (240) = {362.60,33.80,0.00, 0.875};
Point{240} In Surface{1};//surface electrode
Point (241) = {366.00,34.58,0.00, 0.875};
Point{241} In Surface{1};//surface electrode
Point (242) = {369.36,35.57,0.00, 0.875};
Point{242} In Surface{1};//surface electrode
Point (243) = {372.65,36.72,0.00, 0.875};
Point{243} In Surface{1};//surface electrode
Point (244) = {375.98,37.80,0.00, 0.875};
Point{244} In Surface{1};//surface electrode
Point (245) = {379.33,38.69,0.00, 0.875};
Point{245} In Surface{1};//surface electrode
Point (246) = {382.79,39.24,0.00, 0.875};
Point{246} In Surface{1};//surface electrode
Point (247) = {386.29,39.58,0.00, 0.875};
Point{247} In Surface{1};//surface electrode
Point (248) = {389.77,39.70,0.00, 0.875};
Point{248} In Surface{1};//surface electrode
Point (249) = {393.27,39.56,0.00, 0.875};
Point{249} In Surface{1};//surface electrode
Point (250) = {396.79,39.24,0.00, 0.875};
Point{250} In Surface{1};//surface electrode
Point (251) = {400.24,39.02,0.00, 0.875};
Point{251} In Surface{1};//surface electrode
Point (252) = {403.72,38.80,0.00, 0.875};
Point{252} In Surface{1};//surface electrode
Point (253) = {407.20,38.52,0.00, 0.875};
Point{253} In Surface{1};//surface electrode
Point (254) = {410.70,38.26,0.00, 0.875};
Point{254} In Surface{1};//surface electrode
Point (255) = {414.15,37.98,0.00, 0.875};
Point{255} In Surface{1};//surface electrode
Point (256) = {417.67,37.86,0.00, 0.875};
Point{256} In Surface{1};//surface electrode
Point (257) = {421.16,37.80,0.00, 0.875};
Point{257} In Surface{1};//surface electrode
Point (258) = {424.69,37.80,0.00, 0.875};
Point{258} In Surface{1};//surface electrode
Point (259) = {428.09,38.07,0.00, 0.875};
Point{259} In Surface{1};//surface electrode
Point (260) = {431.34,38.74,0.00, 0.875};
Point{260} In Surface{1};//surface electrode
Point (261) = {434.79,39.40,0.00, 0.875};
Point{261} In Surface{1};//surface electrode
Point (262) = {438.25,38.97,0.00, 0.875};
Point{262} In Surface{1};//surface electrode
Point (263) = {441.69,38.51,0.00, 0.875};
Point{263} In Surface{1};//surface electrode
Point (264) = {445.19,37.94,0.00, 0.875};
Point{264} In Surface{1};//surface electrode
Point (265) = {448.62,37.34,0.00, 0.875};
Point{265} In Surface{1};//surface electrode
Point (266) = {452.01,36.60,0.00, 0.875};
Point{266} In Surface{1};//surface electrode
Point (267) = {455.50,36.22,0.00, 0.875};
Point{267} In Surface{1};//surface electrode
Point (268) = {458.99,35.74,0.00, 0.875};
Point{268} In Surface{1};//surface electrode
Point (269) = {462.43,35.36,0.00, 0.875};
Point{269} In Surface{1};//surface electrode
Point (270) = {465.93,35.00,0.00, 0.875};
Point{270} In Surface{1};//surface electrode
Point (271) = {469.40,34.64,0.00, 0.875};
Point{271} In Surface{1};//surface electrode
Point (272) = {472.88,34.34,0.00, 0.875};
Point{272} In Surface{1};//surface electrode
Point (273) = {67.91,61.44,0.00, 0.875};
Point{273} In Surface{1};//surface electrode
Point (274) = {71.27,62.20,0.00, 0.875};
Point{274} In Surface{1};//surface electrode
Point (275) = {74.73,63.00,0.00, 0.875};
Point{275} In Surface{1};//surface electrode
Point (276) = {78.17,63.75,0.00, 0.875};
Point{276} In Surface{1};//surface electrode
Point (277) = {81.58,64.39,0.00, 0.875};
Point{277} In Surface{1};//surface electrode
Point (278) = {84.90,65.08,0.00, 0.875};
Point{278} In Surface{1};//surface electrode
Point (279) = {88.37,65.68,0.00, 0.875};
Point{279} In Surface{1};//surface electrode
Point (280) = {91.90,66.10,0.00, 0.875};
Point{280} In Surface{1};//surface electrode
Point (281) = {95.36,66.41,0.00, 0.875};
Point{281} In Surface{1};//surface electrode
Point (282) = {98.86,66.75,0.00, 0.875};
Point{282} In Surface{1};//surface electrode
Point (283) = {102.34,67.12,0.00, 0.875};
Point{283} In Surface{1};//surface electrode
Point (284) = {105.77,67.19,0.00, 0.875};
Point{284} In Surface{1};//surface electrode
Point (285) = {109.33,67.23,0.00, 0.875};
Point{285} In Surface{1};//surface electrode
Point (286) = {112.78,67.40,0.00, 0.875};
Point{286} In Surface{1};//surface electrode
Point (287) = {116.27,67.48,0.00, 0.875};
Point{287} In Surface{1};//surface electrode
Point (288) = {119.79,67.61,0.00, 0.875};
Point{288} In Surface{1};//surface electrode
Point (289) = {123.26,67.80,0.00, 0.875};
Point{289} In Surface{1};//surface electrode
Point (290) = {126.74,67.88,0.00, 0.875};
Point{290} In Surface{1};//surface electrode
Point (291) = {130.23,67.97,0.00, 0.875};
Point{291} In Surface{1};//surface electrode
Point (292) = {133.71,68.16,0.00, 0.875};
Point{292} In Surface{1};//surface electrode
Point (293) = {137.19,68.37,0.00, 0.875};
Point{293} In Surface{1};//surface electrode
Point (294) = {140.69,68.69,0.00, 0.875};
Point{294} In Surface{1};//surface electrode
Point (295) = {144.19,68.77,0.00, 0.875};
Point{295} In Surface{1};//surface electrode
Point (296) = {147.63,68.87,0.00, 0.875};
Point{296} In Surface{1};//surface electrode
Point (297) = {151.18,68.80,0.00, 0.875};
Point{297} In Surface{1};//surface electrode
Point (298) = {154.65,68.79,0.00, 0.875};
Point{298} In Surface{1};//surface electrode
Point (299) = {158.07,68.64,0.00, 0.875};
Point{299} In Surface{1};//surface electrode
Point (300) = {161.66,68.52,0.00, 0.875};
Point{300} In Surface{1};//surface electrode
Point (301) = {165.20,68.44,0.00, 0.875};
Point{301} In Surface{1};//surface electrode
Point (302) = {168.79,67.97,0.00, 0.875};
Point{302} In Surface{1};//surface electrode
Point (303) = {172.26,67.80,0.00, 0.875};
Point{303} In Surface{1};//surface electrode
Point (304) = {175.82,67.66,0.00, 0.875};
Point{304} In Surface{1};//surface electrode
Point (305) = {179.28,67.59,0.00, 0.875};
Point{305} In Surface{1};//surface electrode
Point (306) = {182.76,67.36,0.00, 0.875};
Point{306} In Surface{1};//surface electrode
Point (307) = {186.25,67.30,0.00, 0.875};
Point{307} In Surface{1};//surface electrode
Point (308) = {189.70,67.13,0.00, 0.875};
Point{308} In Surface{1};//surface electrode
Point (309) = {193.20,66.95,0.00, 0.875};
Point{309} In Surface{1};//surface electrode
Point (310) = {196.69,66.61,0.00, 0.875};
Point{310} In Surface{1};//surface electrode
Point (311) = {200.14,65.87,0.00, 0.875};
Point{311} In Surface{1};//surface electrode
Point (312) = {203.51,65.20,0.00, 0.875};
Point{312} In Surface{1};//surface electrode
Point (313) = {206.96,64.44,0.00, 0.875};
Point{313} In Surface{1};//surface electrode
Point (314) = {210.33,63.73,0.00, 0.875};
Point{314} In Surface{1};//surface electrode
Point (315) = {213.76,62.92,0.00, 0.875};
Point{315} In Surface{1};//surface electrode
Point (316) = {217.06,61.96,0.00, 0.875};
Point{316} In Surface{1};//surface electrode
Point (317) = {220.46,60.88,0.00, 0.875};
Point{317} In Surface{1};//surface electrode
Point (318) = {223.77,59.74,0.00, 0.875};
Point{318} In Surface{1};//surface electrode
Point (319) = {227.17,58.67,0.00, 0.875};
Point{319} In Surface{1};//surface electrode
Point (320) = {230.52,57.86,0.00, 0.875};
Point{320} In Surface{1};//surface electrode
Point (321) = {233.92,57.08,0.00, 0.875};
Point{321} In Surface{1};//surface electrode
Point (322) = {237.42,56.33,0.00, 0.875};
Point{322} In Surface{1};//surface electrode
Point (323) = {240.82,55.78,0.00, 0.875};
Point{323} In Surface{1};//surface electrode
Point (324) = {244.29,55.25,0.00, 0.875};
Point{324} In Surface{1};//surface electrode
Point (325) = {247.71,54.92,0.00, 0.875};
Point{325} In Surface{1};//surface electrode
Point (326) = {251.18,54.42,0.00, 0.875};
Point{326} In Surface{1};//surface electrode
Point (327) = {254.66,53.96,0.00, 0.875};
Point{327} In Surface{1};//surface electrode
Point (328) = {258.12,53.44,0.00, 0.875};
Point{328} In Surface{1};//surface electrode
Point (329) = {261.59,53.02,0.00, 0.875};
Point{329} In Surface{1};//surface electrode
Point (330) = {265.09,52.54,0.00, 0.875};
Point{330} In Surface{1};//surface electrode
Point (331) = {268.42,51.87,0.00, 0.875};
Point{331} In Surface{1};//surface electrode
Point (332) = {271.93,51.28,0.00, 0.875};
Point{332} In Surface{1};//surface electrode
Point (333) = {275.34,50.96,0.00, 0.875};
Point{333} In Surface{1};//surface electrode
Point (334) = {278.91,50.68,0.00, 0.875};
Point{334} In Surface{1};//surface electrode
Point (335) = {282.39,50.54,0.00, 0.875};
Point{335} In Surface{1};//surface electrode
Point (336) = {285.80,50.26,0.00, 0.875};
Point{336} In Surface{1};//surface electrode
Point (337) = {289.33,50.17,0.00, 0.875};
Point{337} In Surface{1};//surface electrode
Point (338) = {292.83,50.04,0.00, 0.875};
Point{338} In Surface{1};//surface electrode
Point (339) = {296.34,49.82,0.00, 0.875};
Point{339} In Surface{1};//surface electrode
Point (340) = {299.78,49.58,0.00, 0.875};
Point{340} In Surface{1};//surface electrode
Point (341) = {303.28,49.40,0.00, 0.875};
Point{341} In Surface{1};//surface electrode
Point (342) = {306.79,49.24,0.00, 0.875};
Point{342} In Surface{1};//surface electrode
Point (343) = {310.29,49.01,0.00, 0.875};
Point{343} In Surface{1};//surface electrode
Point (344) = {313.76,48.85,0.00, 0.875};
Point{344} In Surface{1};//surface electrode
Point (345) = {317.29,48.72,0.00, 0.875};
Point{345} In Surface{1};//surface electrode
Point (346) = {320.77,48.66,0.00, 0.875};
Point{346} In Surface{1};//surface electrode
Point (347) = {324.29,48.57,0.00, 0.875};
Point{347} In Surface{1};//surface electrode
Point (348) = {327.78,48.44,0.00, 0.875};
Point{348} In Surface{1};//surface electrode
Point (349) = {331.24,48.37,0.00, 0.875};
Point{349} In Surface{1};//surface electrode
Point (350) = {334.76,48.30,0.00, 0.875};
Point{350} In Surface{1};//surface electrode
Point (351) = {338.25,48.18,0.00, 0.875};
Point{351} In Surface{1};//surface electrode
Point (352) = {341.74,48.05,0.00, 0.875};
Point{352} In Surface{1};//surface electrode
Point (353) = {345.24,47.94,0.00, 0.875};
Point{353} In Surface{1};//surface electrode
Point (354) = {348.74,47.89,0.00, 0.875};
Point{354} In Surface{1};//surface electrode
Point (355) = {352.22,47.97,0.00, 0.875};
Point{355} In Surface{1};//surface electrode
Point (356) = {355.71,48.17,0.00, 0.875};
Point{356} In Surface{1};//surface electrode
Point (357) = {359.17,48.62,0.00, 0.875};
Point{357} In Surface{1};//surface electrode
Point (358) = {362.60,49.40,0.00, 0.875};
Point{358} In Surface{1};//surface electrode
Point (359) = {365.95,50.19,0.00, 0.875};
Point{359} In Surface{1};//surface electrode
Point (360) = {369.24,51.43,0.00, 0.875};
Point{360} In Surface{1};//surface electrode
Point (361) = {372.48,52.84,0.00, 0.875};
Point{361} In Surface{1};//surface electrode
Point (362) = {375.72,54.02,0.00, 0.875};
Point{362} In Surface{1};//surface electrode
Point (363) = {379.09,54.83,0.00, 0.875};
Point{363} In Surface{1};//surface electrode
Point (364) = {382.59,55.21,0.00, 0.875};
Point{364} In Surface{1};//surface electrode
Point (365) = {386.05,55.49,0.00, 0.875};
Point{365} In Surface{1};//surface electrode
Point (366) = {389.56,55.83,0.00, 0.875};
Point{366} In Surface{1};//surface electrode
Point (367) = {393.04,56.01,0.00, 0.875};
Point{367} In Surface{1};//surface electrode
Point (368) = {396.51,56.30,0.00, 0.875};
Point{368} In Surface{1};//surface electrode
Point (369) = {399.98,56.74,0.00, 0.875};
Point{369} In Surface{1};//surface electrode
Point (370) = {403.43,57.26,0.00, 0.875};
Point{370} In Surface{1};//surface electrode
Point (371) = {406.95,57.32,0.00, 0.875};
Point{371} In Surface{1};//surface electrode
Point (372) = {410.44,57.24,0.00, 0.875};
Point{372} In Surface{1};//surface electrode
Point (373) = {413.88,57.14,0.00, 0.875};
Point{373} In Surface{1};//surface electrode
Point (374) = {390.50,34.15,0.00, 0.875};
Point{374} In Surface{1};//surface electrode
Point (375) = {393.95,34.12,0.00, 0.875};
Point{375} In Surface{1};//surface electrode
Point (376) = {397.47,33.92,0.00, 0.875};
Point{376} In Surface{1};//surface electrode
Point (377) = {400.92,33.68,0.00, 0.875};
Point{377} In Surface{1};//surface electrode
Point (378) = {404.44,33.37,0.00, 0.875};
Point{378} In Surface{1};//surface electrode
Point (379) = {407.87,33.04,0.00, 0.875};
Point{379} In Surface{1};//surface electrode
Point (380) = {411.38,32.74,0.00, 0.875};
Point{380} In Surface{1};//surface electrode
Point (381) = {414.85,32.38,0.00, 0.875};
Point{381} In Surface{1};//surface electrode
Point (382) = {418.31,32.13,0.00, 0.875};
Point{382} In Surface{1};//surface electrode
Point (383) = {421.77,31.83,0.00, 0.875};
Point{383} In Surface{1};//surface electrode
Point (384) = {425.29,31.47,0.00, 0.875};
Point{384} In Surface{1};//surface electrode
Point (385) = {428.71,31.11,0.00, 0.875};
Point{385} In Surface{1};//surface electrode
Point (386) = {432.29,30.75,0.00, 0.875};
Point{386} In Surface{1};//surface electrode
Point (387) = {435.61,30.32,0.00, 0.875};
Point{387} In Surface{1};//surface electrode
Point (388) = {439.25,30.04,0.00, 0.875};
Point{388} In Surface{1};//surface electrode
Point (389) = {442.74,29.72,0.00, 0.875};
Point{389} In Surface{1};//surface electrode
Point (390) = {446.33,29.67,0.00, 0.875};
Point{390} In Surface{1};//surface electrode
Point (391) = {449.86,29.37,0.00, 0.875};
Point{391} In Surface{1};//surface electrode
Point (392) = {453.24,29.19,0.00, 0.875};
Point{392} In Surface{1};//surface electrode
Point (393) = {456.68,29.04,0.00, 0.875};
Point{393} In Surface{1};//surface electrode
Point (394) = {460.16,28.71,0.00, 0.875};
Point{394} In Surface{1};//surface electrode
Point (395) = {463.63,28.59,0.00, 0.875};
Point{395} In Surface{1};//surface electrode
Point (396) = {467.18,28.42,0.00, 0.875};
Point{396} In Surface{1};//surface electrode
Point (397) = {470.62,28.33,0.00, 0.875};
Point{397} In Surface{1};//surface electrode
Point (398) = {474.19,28.18,0.00, 0.875};
Point{398} In Surface{1};//surface electrode
Point (399) = {477.77,27.91,0.00, 0.875};
Point{399} In Surface{1};//surface electrode
Point (400) = {481.08,27.65,0.00, 0.875};
Point{400} In Surface{1};//surface electrode
Point (401) = {484.64,27.43,0.00, 0.875};
Point{401} In Surface{1};//surface electrode
Point (402) = {488.14,27.18,0.00, 0.875};
Point{402} In Surface{1};//surface electrode
Point (403) = {491.59,26.72,0.00, 0.875};
Point{403} In Surface{1};//surface electrode
Point (404) = {494.96,26.68,0.00, 0.875};
Point{404} In Surface{1};//surface electrode
Point (405) = {498.44,26.57,0.00, 0.875};
Point{405} In Surface{1};//surface electrode
Point (406) = {502.02,26.25,0.00, 0.875};
Point{406} In Surface{1};//surface electrode
Point (407) = {505.44,26.12,0.00, 0.875};
Point{407} In Surface{1};//surface electrode
Point (408) = {508.96,25.97,0.00, 0.875};
Point{408} In Surface{1};//surface electrode
Point (409) = {512.40,25.76,0.00, 0.875};
Point{409} In Surface{1};//surface electrode
Point (410) = {515.96,25.61,0.00, 0.875};
Point{410} In Surface{1};//surface electrode
Point (411) = {519.42,25.36,0.00, 0.875};
Point{411} In Surface{1};//surface electrode
Point (412) = {522.93,25.19,0.00, 0.875};
Point{412} In Surface{1};//surface electrode
Point (413) = {526.39,24.98,0.00, 0.875};
Point{413} In Surface{1};//surface electrode
Point (414) = {529.81,24.81,0.00, 0.875};
Point{414} In Surface{1};//surface electrode
Point (415) = {533.25,24.76,0.00, 0.875};
Point{415} In Surface{1};//surface electrode
Point (416) = {536.85,24.63,0.00, 0.875};
Point{416} In Surface{1};//surface electrode
Point (417) = {540.28,24.62,0.00, 0.875};
Point{417} In Surface{1};//surface electrode
Point (418) = {543.80,24.45,0.00, 0.875};
Point{418} In Surface{1};//surface electrode
Point (419) = {547.28,24.40,0.00, 0.875};
Point{419} In Surface{1};//surface electrode
Point (420) = {550.74,24.29,0.00, 0.875};
Point{420} In Surface{1};//surface electrode
Point (421) = {554.29,24.10,0.00, 0.875};
Point{421} In Surface{1};//surface electrode
Point (422) = {557.84,23.96,0.00, 0.875};
Point{422} In Surface{1};//surface electrode
Point (423) = {561.28,23.85,0.00, 0.875};
Point{423} In Surface{1};//surface electrode
Point (424) = {564.76,23.72,0.00, 0.875};
Point{424} In Surface{1};//surface electrode
Point (425) = {568.25,23.49,0.00, 0.875};
Point{425} In Surface{1};//surface electrode
Point (426) = {571.75,23.41,0.00, 0.875};
Point{426} In Surface{1};//surface electrode
Point (427) = {575.27,23.23,0.00, 0.875};
Point{427} In Surface{1};//surface electrode
Point (428) = {578.70,23.07,0.00, 0.875};
Point{428} In Surface{1};//surface electrode
Point (429) = {582.28,22.91,0.00, 0.875};
Point{429} In Surface{1};//surface electrode
Point (430) = {585.77,22.54,0.00, 0.875};
Point{430} In Surface{1};//surface electrode
Point (431) = {589.18,22.23,0.00, 0.875};
Point{431} In Surface{1};//surface electrode
Point (432) = {592.67,22.21,0.00, 0.875};
Point{432} In Surface{1};//surface electrode
Point (433) = {596.12,22.12,0.00, 0.875};
Point{433} In Surface{1};//surface electrode
Point (434) = {599.66,22.01,0.00, 0.875};
Point{434} In Surface{1};//surface electrode
Point (435) = {603.14,21.87,0.00, 0.875};
Point{435} In Surface{1};//surface electrode
Point (436) = {606.65,21.81,0.00, 0.875};
Point{436} In Surface{1};//surface electrode
Point (437) = {610.16,21.65,0.00, 0.875};
Point{437} In Surface{1};//surface electrode
Point (438) = {415.62,82.20,0.00, 0.25};
Point{438} In Surface{1};//surface electrode
Point (439) = {415.48,81.24,0.00, 0.25};
Point{439} In Surface{1};//surface electrode
Point (440) = {415.49,80.40,0.00, 0.25};
Point{440} In Surface{1};//surface electrode
Point (441) = {415.34,79.36,0.00, 0.25};
Point{441} In Surface{1};//surface electrode
Point (442) = {415.34,78.33,0.00, 0.25};
Point{442} In Surface{1};//surface electrode
Point (443) = {415.26,77.38,0.00, 0.25};
Point{443} In Surface{1};//surface electrode
Point (444) = {415.22,76.39,0.00, 0.25};
Point{444} In Surface{1};//surface electrode
Point (445) = {415.19,75.34,0.00, 0.25};
Point{445} In Surface{1};//surface electrode
Point (446) = {415.09,74.38,0.00, 0.25};
Point{446} In Surface{1};//surface electrode
Point (447) = {415.04,73.35,0.00, 0.25};
Point{447} In Surface{1};//surface electrode
Point (448) = {414.97,72.32,0.00, 0.25};
Point{448} In Surface{1};//surface electrode
Point (449) = {414.92,71.38,0.00, 0.25};
Point{449} In Surface{1};//surface electrode
Point (450) = {414.85,70.37,0.00, 0.25};
Point{450} In Surface{1};//surface electrode
Point (451) = {414.76,69.45,0.00, 0.25};
Point{451} In Surface{1};//surface electrode
Point (452) = {414.68,68.46,0.00, 0.25};
Point{452} In Surface{1};//surface electrode
Point (453) = {414.60,67.50,0.00, 0.25};
Point{453} In Surface{1};//surface electrode
Point (454) = {414.60,66.39,0.00, 0.25};
Point{454} In Surface{1};//surface electrode
Point (455) = {414.52,65.42,0.00, 0.25};
Point{455} In Surface{1};//surface electrode
Point (456) = {414.42,64.40,0.00, 0.25};
Point{456} In Surface{1};//surface electrode
Point (457) = {414.39,63.46,0.00, 0.25};
Point{457} In Surface{1};//surface electrode
Point (458) = {414.28,62.47,0.00, 0.25};
Point{458} In Surface{1};//surface electrode
Point (459) = {414.20,61.52,0.00, 0.25};
Point{459} In Surface{1};//surface electrode
Point (460) = {414.09,60.49,0.00, 0.25};
Point{460} In Surface{1};//surface electrode
Point (461) = {414.04,59.44,0.00, 0.25};
Point{461} In Surface{1};//surface electrode
Point (462) = {413.97,58.51,0.00, 0.25};
Point{462} In Surface{1};//surface electrode
Point (463) = {413.92,57.53,0.00, 0.25};
Point{463} In Surface{1};//surface electrode
Point (464) = {413.94,56.53,0.00, 0.25};
Point{464} In Surface{1};//surface electrode
Point (465) = {413.80,55.60,0.00, 0.25};
Point{465} In Surface{1};//surface electrode
Point (466) = {413.59,54.61,0.00, 0.25};
Point{466} In Surface{1};//surface electrode
Point (467) = {413.58,53.73,0.00, 0.25};
Point{467} In Surface{1};//surface electrode
Point (468) = {413.51,52.79,0.00, 0.25};
Point{468} In Surface{1};//surface electrode
Point (469) = {413.42,51.76,0.00, 0.25};
Point{469} In Surface{1};//surface electrode
Point (470) = {413.20,50.63,0.00, 0.25};
Point{470} In Surface{1};//surface electrode
Point (471) = {413.09,49.65,0.00, 0.25};
Point{471} In Surface{1};//surface electrode
Point (472) = {412.97,48.74,0.00, 0.25};
Point{472} In Surface{1};//surface electrode
Point (473) = {412.91,47.79,0.00, 0.25};
Point{473} In Surface{1};//surface electrode
Point (474) = {412.79,46.91,0.00, 0.25};
Point{474} In Surface{1};//surface electrode
Point (475) = {412.63,46.07,0.00, 0.25};
Point{475} In Surface{1};//surface electrode
Point (476) = {412.62,45.01,0.00, 0.25};
Point{476} In Surface{1};//surface electrode
Point (477) = {412.50,44.07,0.00, 0.25};
Point{477} In Surface{1};//surface electrode
Point (478) = {412.41,43.11,0.00, 0.25};
Point{478} In Surface{1};//surface electrode
Point (479) = {412.30,42.16,0.00, 0.25};
Point{479} In Surface{1};//surface electrode
Point (480) = {412.23,41.21,0.00, 0.25};
Point{480} In Surface{1};//surface electrode
Point (481) = {412.17,40.11,0.00, 0.25};
Point{481} In Surface{1};//surface electrode
Point (482) = {412.11,39.14,0.00, 0.25};
Point{482} In Surface{1};//surface electrode
Point (483) = {412.02,38.16,0.00, 0.25};
Point{483} In Surface{1};//surface electrode
Point (484) = {411.89,37.18,0.00, 0.25};
Point{484} In Surface{1};//surface electrode
Point (485) = {411.92,36.21,0.00, 0.25};
Point{485} In Surface{1};//surface electrode
Point (486) = {411.84,35.33,0.00, 0.25};
Point{486} In Surface{1};//surface electrode
Point (487) = {411.77,34.38,0.00, 0.25};
Point{487} In Surface{1};//surface electrode
Point (488) = {411.72,33.45,0.00, 0.25};
Point{488} In Surface{1};//surface electrode
Point (489) = {411.67,32.50,0.00, 0.25};
Point{489} In Surface{1};//surface electrode
Point (490) = {411.53,31.65,0.00, 0.25};
Point{490} In Surface{1};//surface electrode
Point (491) = {411.49,30.72,0.00, 0.25};
Point{491} In Surface{1};//surface electrode
Point (492) = {411.41,29.71,0.00, 0.25};
Point{492} In Surface{1};//surface electrode
Point (493) = {390.47,69.26,0.00, 0.25};
Point{493} In Surface{1};//surface electrode
Point (494) = {390.56,68.35,0.00, 0.25};
Point{494} In Surface{1};//surface electrode
Point (495) = {390.54,67.37,0.00, 0.25};
Point{495} In Surface{1};//surface electrode
Point (496) = {390.60,66.37,0.00, 0.25};
Point{496} In Surface{1};//surface electrode
Point (497) = {390.57,65.35,0.00, 0.25};
Point{497} In Surface{1};//surface electrode
Point (498) = {390.60,64.39,0.00, 0.25};
Point{498} In Surface{1};//surface electrode
Point (499) = {390.67,63.37,0.00, 0.25};
Point{499} In Surface{1};//surface electrode
Point (500) = {390.65,62.35,0.00, 0.25};
Point{500} In Surface{1};//surface electrode
Point (501) = {390.68,61.37,0.00, 0.25};
Point{501} In Surface{1};//surface electrode
Point (502) = {390.74,60.34,0.00, 0.25};
Point{502} In Surface{1};//surface electrode
Point (503) = {390.75,59.35,0.00, 0.25};
Point{503} In Surface{1};//surface electrode
Point (504) = {390.77,58.40,0.00, 0.25};
Point{504} In Surface{1};//surface electrode
Point (505) = {390.75,57.40,0.00, 0.25};
Point{505} In Surface{1};//surface electrode
Point (506) = {390.75,56.41,0.00, 0.25};
Point{506} In Surface{1};//surface electrode
Point (507) = {390.76,55.35,0.00, 0.25};
Point{507} In Surface{1};//surface electrode
Point (508) = {390.79,54.43,0.00, 0.25};
Point{508} In Surface{1};//surface electrode
Point (509) = {390.78,53.39,0.00, 0.25};
Point{509} In Surface{1};//surface electrode
Point (510) = {390.82,52.44,0.00, 0.25};
Point{510} In Surface{1};//surface electrode
Point (511) = {390.83,51.48,0.00, 0.25};
Point{511} In Surface{1};//surface electrode
Point (512) = {390.85,50.55,0.00, 0.25};
Point{512} In Surface{1};//surface electrode
Point (513) = {390.84,49.62,0.00, 0.25};
Point{513} In Surface{1};//surface electrode
Point (514) = {390.82,48.67,0.00, 0.25};
Point{514} In Surface{1};//surface electrode
Point (515) = {390.81,47.70,0.00, 0.25};
Point{515} In Surface{1};//surface electrode
Point (516) = {390.79,46.79,0.00, 0.25};
Point{516} In Surface{1};//surface electrode
Point (517) = {390.79,45.88,0.00, 0.25};
Point{517} In Surface{1};//surface electrode
Point (518) = {390.80,44.90,0.00, 0.25};
Point{518} In Surface{1};//surface electrode
Point (519) = {390.81,43.97,0.00, 0.25};
Point{519} In Surface{1};//surface electrode
Point (520) = {390.83,43.02,0.00, 0.25};
Point{520} In Surface{1};//surface electrode
Point (521) = {390.84,42.02,0.00, 0.25};
Point{521} In Surface{1};//surface electrode
Point (522) = {390.83,41.00,0.00, 0.25};
Point{522} In Surface{1};//surface electrode
Point (523) = {390.84,40.02,0.00, 0.25};
Point{523} In Surface{1};//surface electrode
Point (524) = {390.96,39.03,0.00, 0.25};
Point{524} In Surface{1};//surface electrode
Point (525) = {391.03,38.09,0.00, 0.25};
Point{525} In Surface{1};//surface electrode
Point (526) = {391.12,37.13,0.00, 0.25};
Point{526} In Surface{1};//surface electrode
Point (527) = {391.19,36.23,0.00, 0.25};
Point{527} In Surface{1};//surface electrode
Point (528) = {391.17,35.30,0.00, 0.25};
Point{528} In Surface{1};//surface electrode
Point (529) = {391.31,34.37,0.00, 0.25};
Point{529} In Surface{1};//surface electrode
Point (530) = {391.26,33.41,0.00, 0.25};
Point{530} In Surface{1};//surface electrode
Point (531) = {391.34,32.50,0.00, 0.25};
Point{531} In Surface{1};//surface electrode
Point (532) = {391.56,31.53,0.00, 0.25};
Point{532} In Surface{1};//surface electrode
Point (533) = {391.56,30.51,0.00, 0.25};
Point{533} In Surface{1};//surface electrode
Point (534) = {391.64,29.68,0.00, 0.25};
Point{534} In Surface{1};//surface electrode
Point (535) = {391.84,28.53,0.00, 0.25};
Point{535} In Surface{1};//surface electrode
Point (536) = {391.88,27.59,0.00, 0.25};
Point{536} In Surface{1};//surface electrode
Point (537) = {392.03,26.57,0.00, 0.25};
Point{537} In Surface{1};//surface electrode
Point (538) = {392.04,25.64,0.00, 0.25};
Point{538} In Surface{1};//surface electrode
Point (539) = {392.15,24.58,0.00, 0.25};
Point{539} In Surface{1};//surface electrode
Point (540) = {392.15,23.60,0.00, 0.25};
Point{540} In Surface{1};//surface electrode
Point (541) = {392.23,22.60,0.00, 0.25};
Point{541} In Surface{1};//surface electrode
Point (542) = {392.22,21.62,0.00, 0.25};
Point{542} In Surface{1};//surface electrode
Point (543) = {392.26,20.57,0.00, 0.25};
Point{543} In Surface{1};//surface electrode
Point (544) = {392.40,19.61,0.00, 0.25};
Point{544} In Surface{1};//surface electrode
Point (545) = {392.46,18.60,0.00, 0.25};
Point{545} In Surface{1};//surface electrode
Point (546) = {392.57,17.59,0.00, 0.25};
Point{546} In Surface{1};//surface electrode
Point (547) = {392.59,16.57,0.00, 0.25};
Point{547} In Surface{1};//surface electrode
Point (548) = {392.56,15.63,0.00, 0.25};
Point{548} In Surface{1};//surface electrode
Point (549) = {392.61,14.63,0.00, 0.25};
Point{549} In Surface{1};//surface electrode
Point (550) = {392.66,13.58,0.00, 0.25};
Point{550} In Surface{1};//surface electrode
Point (551) = {392.76,12.61,0.00, 0.25};
Point{551} In Surface{1};//surface electrode
Point (552) = {392.74,11.65,0.00, 0.25};
Point{552} In Surface{1};//surface electrode
Point (553) = {392.87,10.63,0.00, 0.25};
Point{553} In Surface{1};//surface electrode
Point (554) = {392.95,9.60,0.00, 0.25};
Point{554} In Surface{1};//surface electrode
Point (555) = {393.02,8.63,0.00, 0.25};
Point{555} In Surface{1};//surface electrode
Point (556) = {393.00,7.71,0.00, 0.25};
Point{556} In Surface{1};//surface electrode
Point (557) = {331.42,61.80,0.00, 0.25};
Point{557} In Surface{1};//surface electrode
Point (558) = {331.38,60.94,0.00, 0.25};
Point{558} In Surface{1};//surface electrode
Point (559) = {331.32,59.91,0.00, 0.25};
Point{559} In Surface{1};//surface electrode
Point (560) = {331.28,58.96,0.00, 0.25};
Point{560} In Surface{1};//surface electrode
Point (561) = {331.23,57.92,0.00, 0.25};
Point{561} In Surface{1};//surface electrode
Point (562) = {331.10,56.93,0.00, 0.25};
Point{562} In Surface{1};//surface electrode
Point (563) = {331.08,55.91,0.00, 0.25};
Point{563} In Surface{1};//surface electrode
Point (564) = {331.04,54.96,0.00, 0.25};
Point{564} In Surface{1};//surface electrode
Point (565) = {330.98,53.92,0.00, 0.25};
Point{565} In Surface{1};//surface electrode
Point (566) = {330.97,52.89,0.00, 0.25};
Point{566} In Surface{1};//surface electrode
Point (567) = {330.91,51.92,0.00, 0.25};
Point{567} In Surface{1};//surface electrode
Point (568) = {330.80,50.97,0.00, 0.25};
Point{568} In Surface{1};//surface electrode
Point (569) = {330.81,49.92,0.00, 0.25};
Point{569} In Surface{1};//surface electrode
Point (570) = {330.77,48.90,0.00, 0.25};
Point{570} In Surface{1};//surface electrode
Point (571) = {330.74,47.88,0.00, 0.25};
Point{571} In Surface{1};//surface electrode
Point (572) = {330.68,46.91,0.00, 0.25};
Point{572} In Surface{1};//surface electrode
Point (573) = {330.61,45.91,0.00, 0.25};
Point{573} In Surface{1};//surface electrode
Point (574) = {330.59,45.02,0.00, 0.25};
Point{574} In Surface{1};//surface electrode
Point (575) = {330.48,43.98,0.00, 0.25};
Point{575} In Surface{1};//surface electrode
Point (576) = {330.44,43.07,0.00, 0.25};
Point{576} In Surface{1};//surface electrode
Point (577) = {330.37,42.10,0.00, 0.25};
Point{577} In Surface{1};//surface electrode
Point (578) = {330.35,41.17,0.00, 0.25};
Point{578} In Surface{1};//surface electrode
Point (579) = {330.32,40.29,0.00, 0.25};
Point{579} In Surface{1};//surface electrode
Point (580) = {330.30,39.35,0.00, 0.25};
Point{580} In Surface{1};//surface electrode
Point (581) = {330.26,38.47,0.00, 0.25};
Point{581} In Surface{1};//surface electrode
Point (582) = {330.24,37.47,0.00, 0.25};
Point{582} In Surface{1};//surface electrode
Point (583) = {330.22,36.62,0.00, 0.25};
Point{583} In Surface{1};//surface electrode
Point (584) = {330.20,35.61,0.00, 0.25};
Point{584} In Surface{1};//surface electrode
Point (585) = {330.17,34.61,0.00, 0.25};
Point{585} In Surface{1};//surface electrode
Point (586) = {330.17,33.62,0.00, 0.25};
Point{586} In Surface{1};//surface electrode
Point (587) = {330.10,32.61,0.00, 0.25};
Point{587} In Surface{1};//surface electrode
Point (588) = {330.10,31.70,0.00, 0.25};
Point{588} In Surface{1};//surface electrode
Point (589) = {330.05,30.76,0.00, 0.25};
Point{589} In Surface{1};//surface electrode
Point (590) = {330.00,29.82,0.00, 0.25};
Point{590} In Surface{1};//surface electrode
Point (591) = {330.04,28.88,0.00, 0.25};
Point{591} In Surface{1};//surface electrode
Point (592) = {329.99,27.97,0.00, 0.25};
Point{592} In Surface{1};//surface electrode
Point (593) = {329.93,27.04,0.00, 0.25};
Point{593} In Surface{1};//surface electrode
Point (594) = {329.98,26.05,0.00, 0.25};
Point{594} In Surface{1};//surface electrode
Point (595) = {329.97,25.16,0.00, 0.25};
Point{595} In Surface{1};//surface electrode
Point (596) = {330.02,24.31,0.00, 0.25};
Point{596} In Surface{1};//surface electrode
Point (597) = {330.04,23.42,0.00, 0.25};
Point{597} In Surface{1};//surface electrode
Point (598) = {330.16,22.48,0.00, 0.25};
Point{598} In Surface{1};//surface electrode
Point (599) = {282.74,63.62,0.00, 0.25};
Point{599} In Surface{1};//surface electrode
Point (600) = {282.61,62.70,0.00, 0.25};
Point{600} In Surface{1};//surface electrode
Point (601) = {282.49,61.71,0.00, 0.25};
Point{601} In Surface{1};//surface electrode
Point (602) = {282.38,60.75,0.00, 0.25};
Point{602} In Surface{1};//surface electrode
Point (603) = {282.28,59.83,0.00, 0.25};
Point{603} In Surface{1};//surface electrode
Point (604) = {282.27,58.76,0.00, 0.25};
Point{604} In Surface{1};//surface electrode
Point (605) = {282.22,57.82,0.00, 0.25};
Point{605} In Surface{1};//surface electrode
Point (606) = {282.14,56.79,0.00, 0.25};
Point{606} In Surface{1};//surface electrode
Point (607) = {282.09,55.82,0.00, 0.25};
Point{607} In Surface{1};//surface electrode
Point (608) = {282.01,54.83,0.00, 0.25};
Point{608} In Surface{1};//surface electrode
Point (609) = {281.95,53.80,0.00, 0.25};
Point{609} In Surface{1};//surface electrode
Point (610) = {281.92,52.85,0.00, 0.25};
Point{610} In Surface{1};//surface electrode
Point (611) = {281.86,51.83,0.00, 0.25};
Point{611} In Surface{1};//surface electrode
Point (612) = {281.74,50.80,0.00, 0.25};
Point{612} In Surface{1};//surface electrode
Point (613) = {281.72,49.85,0.00, 0.25};
Point{613} In Surface{1};//surface electrode
Point (614) = {281.64,48.81,0.00, 0.25};
Point{614} In Surface{1};//surface electrode
Point (615) = {281.59,47.89,0.00, 0.25};
Point{615} In Surface{1};//surface electrode
Point (616) = {281.58,46.86,0.00, 0.25};
Point{616} In Surface{1};//surface electrode
Point (617) = {281.54,45.95,0.00, 0.25};
Point{617} In Surface{1};//surface electrode
Point (618) = {281.51,44.95,0.00, 0.25};
Point{618} In Surface{1};//surface electrode
Point (619) = {281.50,44.06,0.00, 0.25};
Point{619} In Surface{1};//surface electrode
Point (620) = {281.44,43.12,0.00, 0.25};
Point{620} In Surface{1};//surface electrode
Point (621) = {281.32,42.20,0.00, 0.25};
Point{621} In Surface{1};//surface electrode
Point (622) = {281.28,41.27,0.00, 0.25};
Point{622} In Surface{1};//surface electrode
Point (623) = {281.22,40.32,0.00, 0.25};
Point{623} In Surface{1};//surface electrode
Point (624) = {281.12,39.39,0.00, 0.25};
Point{624} In Surface{1};//surface electrode
Point (625) = {281.04,38.47,0.00, 0.25};
Point{625} In Surface{1};//surface electrode
Point (626) = {280.95,37.47,0.00, 0.25};
Point{626} In Surface{1};//surface electrode
Point (627) = {280.91,36.57,0.00, 0.25};
Point{627} In Surface{1};//surface electrode
Point (628) = {280.89,35.52,0.00, 0.25};
Point{628} In Surface{1};//surface electrode
Point (629) = {280.71,34.59,0.00, 0.25};
Point{629} In Surface{1};//surface electrode
Point (630) = {280.73,33.65,0.00, 0.25};
Point{630} In Surface{1};//surface electrode
Point (631) = {280.64,32.69,0.00, 0.25};
Point{631} In Surface{1};//surface electrode
Point (632) = {280.57,31.75,0.00, 0.25};
Point{632} In Surface{1};//surface electrode
Point (633) = {280.52,30.78,0.00, 0.25};
Point{633} In Surface{1};//surface electrode
Point (634) = {280.51,29.88,0.00, 0.25};
Point{634} In Surface{1};//surface electrode
Point (635) = {280.48,28.98,0.00, 0.25};
Point{635} In Surface{1};//surface electrode
Point (636) = {280.43,28.05,0.00, 0.25};
Point{636} In Surface{1};//surface electrode
Point (637) = {280.42,27.08,0.00, 0.25};
Point{637} In Surface{1};//surface electrode
Point (638) = {280.44,26.16,0.00, 0.25};
Point{638} In Surface{1};//surface electrode
Point (639) = {280.37,25.23,0.00, 0.25};
Point{639} In Surface{1};//surface electrode
Point (640) = {280.18,24.40,0.00, 0.25};
Point{640} In Surface{1};//surface electrode
Point (641) = {234.82,66.38,0.00, 0.25};
Point{641} In Surface{1};//surface electrode
Point (642) = {234.72,65.37,0.00, 0.25};
Point{642} In Surface{1};//surface electrode
Point (643) = {234.61,64.49,0.00, 0.25};
Point{643} In Surface{1};//surface electrode
Point (644) = {234.46,63.43,0.00, 0.25};
Point{644} In Surface{1};//surface electrode
Point (645) = {234.29,62.42,0.00, 0.25};
Point{645} In Surface{1};//surface electrode
Point (646) = {234.10,61.47,0.00, 0.25};
Point{646} In Surface{1};//surface electrode
Point (647) = {234.01,60.44,0.00, 0.25};
Point{647} In Surface{1};//surface electrode
Point (648) = {233.88,59.50,0.00, 0.25};
Point{648} In Surface{1};//surface electrode
Point (649) = {233.76,58.44,0.00, 0.25};
Point{649} In Surface{1};//surface electrode
Point (650) = {233.58,57.55,0.00, 0.25};
Point{650} In Surface{1};//surface electrode
Point (651) = {233.42,56.50,0.00, 0.25};
Point{651} In Surface{1};//surface electrode
Point (652) = {233.32,55.49,0.00, 0.25};
Point{652} In Surface{1};//surface electrode
Point (653) = {233.12,54.45,0.00, 0.25};
Point{653} In Surface{1};//surface electrode
Point (654) = {232.97,53.49,0.00, 0.25};
Point{654} In Surface{1};//surface electrode
Point (655) = {232.84,52.56,0.00, 0.25};
Point{655} In Surface{1};//surface electrode
Point (656) = {232.61,51.60,0.00, 0.25};
Point{656} In Surface{1};//surface electrode
Point (657) = {232.51,50.69,0.00, 0.25};
Point{657} In Surface{1};//surface electrode
Point (658) = {232.33,49.74,0.00, 0.25};
Point{658} In Surface{1};//surface electrode
Point (659) = {232.24,48.86,0.00, 0.25};
Point{659} In Surface{1};//surface electrode
Point (660) = {232.06,47.84,0.00, 0.25};
Point{660} In Surface{1};//surface electrode
Point (661) = {231.98,46.85,0.00, 0.25};
Point{661} In Surface{1};//surface electrode
Point (662) = {231.94,45.97,0.00, 0.25};
Point{662} In Surface{1};//surface electrode
Point (663) = {231.82,45.05,0.00, 0.25};
Point{663} In Surface{1};//surface electrode
Point (664) = {231.63,44.08,0.00, 0.25};
Point{664} In Surface{1};//surface electrode
Point (665) = {231.53,43.20,0.00, 0.25};
Point{665} In Surface{1};//surface electrode
Point (666) = {231.41,42.31,0.00, 0.25};
Point{666} In Surface{1};//surface electrode
Point (667) = {231.00,41.34,0.00, 0.25};
Point{667} In Surface{1};//surface electrode
Point (668) = {230.77,40.37,0.00, 0.25};
Point{668} In Surface{1};//surface electrode
Point (669) = {230.44,39.46,0.00, 0.25};
Point{669} In Surface{1};//surface electrode
Point (670) = {230.30,38.54,0.00, 0.25};
Point{670} In Surface{1};//surface electrode
Point (671) = {230.04,37.58,0.00, 0.25};
Point{671} In Surface{1};//surface electrode
Point (672) = {229.86,36.67,0.00, 0.25};
Point{672} In Surface{1};//surface electrode
Point (673) = {229.56,35.79,0.00, 0.25};
Point{673} In Surface{1};//surface electrode
Point (674) = {229.36,34.88,0.00, 0.25};
Point{674} In Surface{1};//surface electrode
Point (675) = {229.19,33.93,0.00, 0.25};
Point{675} In Surface{1};//surface electrode
Point (676) = {228.98,33.02,0.00, 0.25};
Point{676} In Surface{1};//surface electrode
Point (677) = {228.79,32.17,0.00, 0.25};
Point{677} In Surface{1};//surface electrode
Point (678) = {228.57,31.20,0.00, 0.25};
Point{678} In Surface{1};//surface electrode
Point (679) = {228.22,30.37,0.00, 0.25};
Point{679} In Surface{1};//surface electrode
Point (680) = {227.90,29.54,0.00, 0.25};
Point{680} In Surface{1};//surface electrode
Point (681) = {184.22,68.65,0.00, 0.25};
Point{681} In Surface{1};//surface electrode
Point (682) = {184.13,67.71,0.00, 0.25};
Point{682} In Surface{1};//surface electrode
Point (683) = {184.10,66.68,0.00, 0.25};
Point{683} In Surface{1};//surface electrode
Point (684) = {183.99,65.78,0.00, 0.25};
Point{684} In Surface{1};//surface electrode
Point (685) = {183.82,64.83,0.00, 0.25};
Point{685} In Surface{1};//surface electrode
Point (686) = {183.74,63.93,0.00, 0.25};
Point{686} In Surface{1};//surface electrode
Point (687) = {183.69,63.07,0.00, 0.25};
Point{687} In Surface{1};//surface electrode
Point (688) = {183.50,62.06,0.00, 0.25};
Point{688} In Surface{1};//surface electrode
Point (689) = {183.44,61.15,0.00, 0.25};
Point{689} In Surface{1};//surface electrode
Point (690) = {183.28,60.15,0.00, 0.25};
Point{690} In Surface{1};//surface electrode
Point (691) = {183.20,59.24,0.00, 0.25};
Point{691} In Surface{1};//surface electrode
Point (692) = {183.12,58.33,0.00, 0.25};
Point{692} In Surface{1};//surface electrode
Point (693) = {183.01,57.46,0.00, 0.25};
Point{693} In Surface{1};//surface electrode
Point (694) = {182.94,56.47,0.00, 0.25};
Point{694} In Surface{1};//surface electrode
Point (695) = {182.82,55.56,0.00, 0.25};
Point{695} In Surface{1};//surface electrode
Point (696) = {182.81,54.62,0.00, 0.25};
Point{696} In Surface{1};//surface electrode
Point (697) = {182.68,53.66,0.00, 0.25};
Point{697} In Surface{1};//surface electrode
Point (698) = {182.52,52.68,0.00, 0.25};
Point{698} In Surface{1};//surface electrode
Point (699) = {182.40,51.68,0.00, 0.25};
Point{699} In Surface{1};//surface electrode
Point (700) = {182.29,50.74,0.00, 0.25};
Point{700} In Surface{1};//surface electrode
Point (701) = {182.27,49.79,0.00, 0.25};
Point{701} In Surface{1};//surface electrode
Point (702) = {182.16,48.89,0.00, 0.25};
Point{702} In Surface{1};//surface electrode
Point (703) = {182.16,47.90,0.00, 0.25};
Point{703} In Surface{1};//surface electrode
Point (704) = {182.12,46.99,0.00, 0.25};
Point{704} In Surface{1};//surface electrode
Point (705) = {182.04,46.05,0.00, 0.25};
Point{705} In Surface{1};//surface electrode
Point (706) = {181.93,45.16,0.00, 0.25};
Point{706} In Surface{1};//surface electrode
Point (707) = {181.81,44.23,0.00, 0.25};
Point{707} In Surface{1};//surface electrode
Point (708) = {181.72,43.34,0.00, 0.25};
Point{708} In Surface{1};//surface electrode
Point (709) = {181.59,42.42,0.00, 0.25};
Point{709} In Surface{1};//surface electrode
Point (710) = {181.43,41.53,0.00, 0.25};
Point{710} In Surface{1};//surface electrode
Point (711) = {132.18,69.21,0.00, 0.25};
Point{711} In Surface{1};//surface electrode
Point (712) = {132.25,68.37,0.00, 0.25};
Point{712} In Surface{1};//surface electrode
Point (713) = {132.26,67.42,0.00, 0.25};
Point{713} In Surface{1};//surface electrode
Point (714) = {132.33,66.48,0.00, 0.25};
Point{714} In Surface{1};//surface electrode
Point (715) = {132.40,65.55,0.00, 0.25};
Point{715} In Surface{1};//surface electrode
Point (716) = {132.45,64.60,0.00, 0.25};
Point{716} In Surface{1};//surface electrode
Point (717) = {132.51,63.70,0.00, 0.25};
Point{717} In Surface{1};//surface electrode
Point (718) = {132.49,62.78,0.00, 0.25};
Point{718} In Surface{1};//surface electrode
Point (719) = {132.55,61.80,0.00, 0.25};
Point{719} In Surface{1};//surface electrode
Point (720) = {132.54,60.94,0.00, 0.25};
Point{720} In Surface{1};//surface electrode
Point (721) = {132.58,59.98,0.00, 0.25};
Point{721} In Surface{1};//surface electrode
Point (722) = {132.64,59.05,0.00, 0.25};
Point{722} In Surface{1};//surface electrode
Point (723) = {132.65,58.16,0.00, 0.25};
Point{723} In Surface{1};//surface electrode
Point (724) = {132.61,57.18,0.00, 0.25};
Point{724} In Surface{1};//surface electrode
Point (725) = {132.59,56.25,0.00, 0.25};
Point{725} In Surface{1};//surface electrode
Point (726) = {132.52,55.28,0.00, 0.25};
Point{726} In Surface{1};//surface electrode
Point (727) = {132.40,54.25,0.00, 0.25};
Point{727} In Surface{1};//surface electrode
Point (728) = {132.36,53.29,0.00, 0.25};
Point{728} In Surface{1};//surface electrode
Point (729) = {132.26,52.35,0.00, 0.25};
Point{729} In Surface{1};//surface electrode
Point (730) = {132.12,51.43,0.00, 0.25};
Point{730} In Surface{1};//surface electrode
Point (731) = {132.06,50.55,0.00, 0.25};
Point{731} In Surface{1};//surface electrode
Point (732) = {131.91,49.61,0.00, 0.25};
Point{732} In Surface{1};//surface electrode
Point (733) = {131.82,48.68,0.00, 0.25};
Point{733} In Surface{1};//surface electrode
Point (734) = {131.75,47.79,0.00, 0.25};
Point{734} In Surface{1};//surface electrode
Point (735) = {131.60,46.86,0.00, 0.25};
Point{735} In Surface{1};//surface electrode
Point (736) = {131.49,45.97,0.00, 0.25};
Point{736} In Surface{1};//surface electrode
Point (737) = {131.40,44.97,0.00, 0.25};
Point{737} In Surface{1};//surface electrode
Point (738) = {131.22,44.22,0.00, 0.25};
Point{738} In Surface{1};//surface electrode
Point (739) = {130.85,42.97,0.00, 0.25};
Point{739} In Surface{1};//surface electrode
Point (740) = {131.02,42.09,0.00, 0.25};
Point{740} In Surface{1};//surface electrode
Point (741) = {130.90,41.08,0.00, 0.25};
Point{741} In Surface{1};//surface electrode
Point (742) = {130.81,40.04,0.00, 0.25};
Point{742} In Surface{1};//surface electrode
Point (743) = {130.80,39.07,0.00, 0.25};
Point{743} In Surface{1};//surface electrode
Point (744) = {130.69,38.04,0.00, 0.25};
Point{744} In Surface{1};//surface electrode
Point (745) = {130.61,37.06,0.00, 0.25};
Point{745} In Surface{1};//surface electrode
Point (746) = {130.55,36.06,0.00, 0.25};
Point{746} In Surface{1};//surface electrode
Point (747) = {130.48,35.08,0.00, 0.25};
Point{747} In Surface{1};//surface electrode
Point (748) = {130.38,34.12,0.00, 0.25};
Point{748} In Surface{1};//surface electrode
Point (749) = {130.30,33.12,0.00, 0.25};
Point{749} In Surface{1};//surface electrode
Point (750) = {130.17,32.07,0.00, 0.25};
Point{750} In Surface{1};//surface electrode
Point (751) = {130.10,31.12,0.00, 0.25};
Point{751} In Surface{1};//surface electrode
Point (752) = {130.01,30.16,0.00, 0.25};
Point{752} In Surface{1};//surface electrode
Point (753) = {129.91,29.19,0.00, 0.25};
Point{753} In Surface{1};//surface electrode
Point (754) = {129.78,28.16,0.00, 0.25};
Point{754} In Surface{1};//surface electrode
Point (755) = {129.67,27.19,0.00, 0.25};
Point{755} In Surface{1};//surface electrode
Point (756) = {129.50,26.21,0.00, 0.25};
Point{756} In Surface{1};//surface electrode
Point (757) = {129.36,25.19,0.00, 0.25};
Point{757} In Surface{1};//surface electrode
Point (758) = {129.25,24.22,0.00, 0.25};
Point{758} In Surface{1};//surface electrode
Point (759) = {129.11,23.20,0.00, 0.25};
Point{759} In Surface{1};//surface electrode
Point (760) = {81.73,70.55,0.00, 0.25};
Point{760} In Surface{1};//surface electrode
Point (761) = {81.78,69.62,0.00, 0.25};
Point{761} In Surface{1};//surface electrode
Point (762) = {81.88,68.62,0.00, 0.25};
Point{762} In Surface{1};//surface electrode
Point (763) = {81.94,67.62,0.00, 0.25};
Point{763} In Surface{1};//surface electrode
Point (764) = {82.05,66.62,0.00, 0.25};
Point{764} In Surface{1};//surface electrode
Point (765) = {82.09,65.64,0.00, 0.25};
Point{765} In Surface{1};//surface electrode
Point (766) = {82.16,64.63,0.00, 0.25};
Point{766} In Surface{1};//surface electrode
Point (767) = {82.20,63.61,0.00, 0.25};
Point{767} In Surface{1};//surface electrode
Point (768) = {82.25,62.68,0.00, 0.25};
Point{768} In Surface{1};//surface electrode
Point (769) = {82.30,61.70,0.00, 0.25};
Point{769} In Surface{1};//surface electrode
Point (770) = {82.41,60.78,0.00, 0.25};
Point{770} In Surface{1};//surface electrode
Point (771) = {82.41,59.81,0.00, 0.25};
Point{771} In Surface{1};//surface electrode
Point (772) = {82.45,58.93,0.00, 0.25};
Point{772} In Surface{1};//surface electrode
Point (773) = {82.53,58.06,0.00, 0.25};
Point{773} In Surface{1};//surface electrode
Point (774) = {82.54,57.11,0.00, 0.25};
Point{774} In Surface{1};//surface electrode
Point (775) = {82.58,56.15,0.00, 0.25};
Point{775} In Surface{1};//surface electrode
Point (776) = {82.63,55.16,0.00, 0.25};
Point{776} In Surface{1};//surface electrode
Point (777) = {82.70,54.16,0.00, 0.25};
Point{777} In Surface{1};//surface electrode
Point (778) = {82.79,53.23,0.00, 0.25};
Point{778} In Surface{1};//surface electrode
Point (779) = {82.75,52.34,0.00, 0.25};
Point{779} In Surface{1};//surface electrode
Point (780) = {82.73,51.41,0.00, 0.25};
Point{780} In Surface{1};//surface electrode
Point (781) = {82.80,50.46,0.00, 0.25};
Point{781} In Surface{1};//surface electrode
Point (782) = {82.78,49.56,0.00, 0.25};
Point{782} In Surface{1};//surface electrode
Point (783) = {82.80,48.62,0.00, 0.25};
Point{783} In Surface{1};//surface electrode
Point (784) = {82.78,47.67,0.00, 0.25};
Point{784} In Surface{1};//surface electrode
Point (785) = {82.70,46.69,0.00, 0.25};
Point{785} In Surface{1};//surface electrode
Point (786) = {82.68,45.77,0.00, 0.25};
Point{786} In Surface{1};//surface electrode
Point (787) = {82.74,44.71,0.00, 0.25};
Point{787} In Surface{1};//surface electrode
Point (788) = {82.67,43.72,0.00, 0.25};
Point{788} In Surface{1};//surface electrode
Point (789) = {82.66,42.72,0.00, 0.25};
Point{789} In Surface{1};//surface electrode
Point (790) = {82.66,41.71,0.00, 0.25};
Point{790} In Surface{1};//surface electrode
Point (791) = {82.68,40.76,0.00, 0.25};
Point{791} In Surface{1};//surface electrode
Point (792) = {82.71,39.78,0.00, 0.25};
Point{792} In Surface{1};//surface electrode
Point (793) = {82.70,38.73,0.00, 0.25};
Point{793} In Surface{1};//surface electrode
Point (794) = {82.73,37.80,0.00, 0.25};
Point{794} In Surface{1};//surface electrode
Point (795) = {82.75,36.81,0.00, 0.25};
Point{795} In Surface{1};//surface electrode
Point (796) = {82.80,35.81,0.00, 0.25};
Point{796} In Surface{1};//surface electrode
Point (797) = {82.84,34.79,0.00, 0.25};
Point{797} In Surface{1};//surface electrode
Point (798) = {82.86,33.80,0.00, 0.25};
Point{798} In Surface{1};//surface electrode
Point (799) = {82.94,32.79,0.00, 0.25};
Point{799} In Surface{1};//surface electrode
Point (800) = {83.09,31.80,0.00, 0.25};
Point{800} In Surface{1};//surface electrode
Point (801) = {83.13,30.77,0.00, 0.25};
Point{801} In Surface{1};//surface electrode
Point (802) = {83.23,29.81,0.00, 0.25};
Point{802} In Surface{1};//surface electrode
Point (803) = {83.34,28.84,0.00, 0.25};
Point{803} In Surface{1};//surface electrode
Point (804) = {83.42,27.82,0.00, 0.25};
Point{804} In Surface{1};//surface electrode
Point (805) = {83.47,26.88,0.00, 0.25};
Point{805} In Surface{1};//surface electrode
Point (806) = {83.53,25.88,0.00, 0.25};
Point{806} In Surface{1};//surface electrode
Point (807) = {83.58,24.90,0.00, 0.25};
Point{807} In Surface{1};//surface electrode
Point (808) = {83.60,23.86,0.00, 0.25};
Point{808} In Surface{1};//surface electrode
//End electrodes
