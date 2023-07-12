//2D mesh script for ResIPy (run the following in gmsh to generate a triangular mesh with topograpghy)
Mesh.Binary = 0;//specify we want ASCII format
cl=0.50;//define characteristic length
//Define surface points
Point(1) = {-11.95,0.00,4.23,cl};//topography point
Point(2) = {0.00,0.00,4.23,cl};//electrode
Point(3) = {2.74,0.00,4.21,cl};//electrode
Point(4) = {5.50,0.00,4.26,cl};//electrode
Point(5) = {8.27,0.00,4.25,cl};//electrode
Point(6) = {10.81,0.00,4.22,cl};//electrode
Point(7) = {13.32,0.00,4.18,cl};//electrode
Point(8) = {15.64,0.00,4.13,cl};//electrode
Point(9) = {18.00,0.00,4.13,cl};//electrode
Point(10) = {20.42,0.00,4.08,cl};//electrode
Point(11) = {22.79,0.00,4.01,cl};//electrode
Point(12) = {25.23,0.00,3.90,cl};//electrode
Point(13) = {27.61,0.00,3.98,cl};//electrode
Point(14) = {29.97,0.00,4.00,cl};//electrode
Point(15) = {32.41,0.00,3.99,cl};//electrode
Point(16) = {34.78,0.00,3.93,cl};//electrode
Point(17) = {37.19,0.00,3.96,cl};//electrode
Point(18) = {39.58,0.00,3.93,cl};//electrode
Point(19) = {41.99,0.00,3.87,cl};//electrode
Point(20) = {44.46,0.00,3.88,cl};//electrode
Point(21) = {46.94,0.00,3.91,cl};//electrode
Point(22) = {49.27,0.00,3.97,cl};//electrode
Point(23) = {51.61,0.00,3.85,cl};//electrode
Point(24) = {54.05,0.00,3.83,cl};//electrode
Point(25) = {56.38,0.00,3.93,cl};//electrode
Point(26) = {58.65,0.00,3.94,cl};//electrode
Point(27) = {61.08,0.00,3.90,cl};//electrode
Point(28) = {63.46,0.00,3.84,cl};//electrode
Point(29) = {65.81,0.00,3.96,cl};//electrode
Point(30) = {68.22,0.00,3.90,cl};//electrode
Point(31) = {70.49,0.00,3.97,cl};//electrode
Point(32) = {72.95,0.00,4.02,cl};//electrode
Point(33) = {75.28,0.00,4.03,cl};//electrode
Point(34) = {77.78,0.00,3.97,cl};//electrode
Point(35) = {80.21,0.00,3.94,cl};//electrode
Point(36) = {82.57,0.00,3.94,cl};//electrode
Point(37) = {84.93,0.00,4.00,cl};//electrode
Point(38) = {87.34,0.00,4.09,cl};//electrode
Point(39) = {89.74,0.00,4.03,cl};//electrode
Point(40) = {92.12,0.00,4.00,cl};//electrode
Point(41) = {94.46,0.00,4.00,cl};//electrode
Point(42) = {96.84,0.00,3.98,cl};//electrode
Point(43) = {99.21,0.00,3.99,cl};//electrode
Point(44) = {101.70,0.00,4.09,cl};//electrode
Point(45) = {103.95,0.00,4.08,cl};//electrode
Point(46) = {106.28,0.00,4.17,cl};//electrode
Point(47) = {108.68,0.00,4.21,cl};//electrode
Point(48) = {111.14,0.00,4.26,cl};//electrode
Point(49) = {113.45,0.00,4.20,cl};//electrode
Point(50) = {115.82,0.00,4.22,cl};//electrode
Point(51) = {118.19,0.00,4.19,cl};//electrode
Point(52) = {120.58,0.00,4.16,cl};//electrode
Point(53) = {122.98,0.00,4.19,cl};//electrode
Point(54) = {125.35,0.00,4.26,cl};//electrode
Point(55) = {127.74,0.00,4.25,cl};//electrode
Point(56) = {130.11,0.00,4.23,cl};//electrode
Point(57) = {132.48,0.00,4.25,cl};//electrode
Point(58) = {134.96,0.00,4.28,cl};//electrode
Point(59) = {137.32,0.00,4.35,cl};//electrode
Point(60) = {139.76,0.00,4.37,cl};//electrode
Point(61) = {142.13,0.00,4.44,cl};//electrode
Point(62) = {144.45,0.00,4.37,cl};//electrode
Point(63) = {146.89,0.00,4.33,cl};//electrode
Point(64) = {149.25,0.00,4.43,cl};//electrode
Point(65) = {151.60,0.00,4.41,cl};//electrode
Point(66) = {153.70,0.00,4.43,cl};//electrode
Point(67) = {155.85,0.00,4.44,cl};//electrode
Point(68) = {157.96,0.00,4.50,cl};//electrode
Point(69) = {160.18,0.00,4.49,cl};//electrode
Point(70) = {172.14,0.00,4.49,cl};//topography point
//construct lines between each surface point
Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,5};
Line(5) = {5,6};
Line(6) = {6,7};
Line(7) = {7,8};
Line(8) = {8,9};
Line(9) = {9,10};
Line(10) = {10,11};
Line(11) = {11,12};
Line(12) = {12,13};
Line(13) = {13,14};
Line(14) = {14,15};
Line(15) = {15,16};
Line(16) = {16,17};
Line(17) = {17,18};
Line(18) = {18,19};
Line(19) = {19,20};
Line(20) = {20,21};
Line(21) = {21,22};
Line(22) = {22,23};
Line(23) = {23,24};
Line(24) = {24,25};
Line(25) = {25,26};
Line(26) = {26,27};
Line(27) = {27,28};
Line(28) = {28,29};
Line(29) = {29,30};
Line(30) = {30,31};
Line(31) = {31,32};
Line(32) = {32,33};
Line(33) = {33,34};
Line(34) = {34,35};
Line(35) = {35,36};
Line(36) = {36,37};
Line(37) = {37,38};
Line(38) = {38,39};
Line(39) = {39,40};
Line(40) = {40,41};
Line(41) = {41,42};
Line(42) = {42,43};
Line(43) = {43,44};
Line(44) = {44,45};
Line(45) = {45,46};
Line(46) = {46,47};
Line(47) = {47,48};
Line(48) = {48,49};
Line(49) = {49,50};
Line(50) = {50,51};
Line(51) = {51,52};
Line(52) = {52,53};
Line(53) = {53,54};
Line(54) = {54,55};
Line(55) = {55,56};
Line(56) = {56,57};
Line(57) = {57,58};
Line(58) = {58,59};
Line(59) = {59,60};
Line(60) = {60,61};
Line(61) = {61,62};
Line(62) = {62,63};
Line(63) = {63,64};
Line(64) = {64,65};
Line(65) = {65,66};
Line(66) = {66,67};
Line(67) = {67,68};
Line(68) = {68,69};
Line(69) = {69,70};
//add points below surface to make a fine mesh region
Point(71) = {-11.95,0.00,-34.72,cl*5.00};//base of smoothed mesh region
Point(72) = {-3.59,0.00,-34.72,cl*5.00};//base of smoothed mesh region
Point(73) = {4.78,0.00,-34.70,cl*5.00};//base of smoothed mesh region
Point(74) = {13.15,0.00,-34.77,cl*5.00};//base of smoothed mesh region
Point(75) = {21.52,0.00,-34.90,cl*5.00};//base of smoothed mesh region
Point(76) = {29.89,0.00,-34.95,cl*5.00};//base of smoothed mesh region
Point(77) = {38.25,0.00,-35.00,cl*5.00};//base of smoothed mesh region
Point(78) = {46.62,0.00,-35.04,cl*5.00};//base of smoothed mesh region
Point(79) = {54.99,0.00,-35.08,cl*5.00};//base of smoothed mesh region
Point(80) = {63.36,0.00,-35.10,cl*5.00};//base of smoothed mesh region
Point(81) = {71.72,0.00,-34.95,cl*5.00};//base of smoothed mesh region
Point(82) = {80.09,0.00,-35.00,cl*5.00};//base of smoothed mesh region
Point(83) = {88.46,0.00,-34.88,cl*5.00};//base of smoothed mesh region
Point(84) = {96.83,0.00,-34.96,cl*5.00};//base of smoothed mesh region
Point(85) = {105.20,0.00,-34.82,cl*5.00};//base of smoothed mesh region
Point(86) = {113.56,0.00,-34.75,cl*5.00};//base of smoothed mesh region
Point(87) = {121.93,0.00,-34.77,cl*5.00};//base of smoothed mesh region
Point(88) = {130.30,0.00,-34.72,cl*5.00};//base of smoothed mesh region
Point(89) = {138.67,0.00,-34.59,cl*5.00};//base of smoothed mesh region
Point(90) = {147.03,0.00,-34.61,cl*5.00};//base of smoothed mesh region
Point(91) = {155.40,0.00,-34.51,cl*5.00};//base of smoothed mesh region
Point(92) = {163.77,0.00,-34.46,cl*5.00};//base of smoothed mesh region
Point(93) = {172.14,0.00,-34.46,cl*5.00};//base of smoothed mesh region
//make lines between base of fine mesh region points
Line(70) = {71,72};
Line(71) = {72,73};
Line(72) = {73,74};
Line(73) = {74,75};
Line(74) = {75,76};
Line(75) = {76,77};
Line(76) = {77,78};
Line(77) = {78,79};
Line(78) = {79,80};
Line(79) = {80,81};
Line(80) = {81,82};
Line(81) = {82,83};
Line(82) = {83,84};
Line(83) = {84,85};
Line(84) = {85,86};
Line(85) = {86,87};
Line(86) = {87,88};
Line(87) = {88,89};
Line(88) = {89,90};
Line(89) = {90,91};
Line(90) = {91,92};
Line(91) = {92,93};

//Adding boundaries
//end of boundaries.
//Add lines at leftmost side of fine mesh region.
Line(92) = {1,71};
//Add lines at rightmost side of fine mesh region.
Line(93) = {70,93};
//compile lines into a line loop for a mesh surface/region.
Line Loop(1) = {92, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, -93, -69, -68, -67, -66, -65, -64, -63, -62, -61, -60, -59, -58, -57, -56, -55, -54, -53, -52, -51, -50, -49, -48, -47, -46, -45, -44, -43, -42, -41, -40, -39, -38, -37, -36, -35, -34, -33, -32, -31, -30, -29, -28, -27, -26, -25, -24, -23, -22, -21, -20, -19, -18, -17, -16, -15, -14, -13, -12, -11, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1};

//Background region (Neumann boundary) points
cln=62.50;//characteristic length for background region
Point(94) = {-812.87,0.00,4.23,cln};//far left upper point
Point(95) = {-812.87,0.00,-519.50,cln};//far left lower point
Point(96) = {973.06,0.00,4.49,cln};//far right upper point
Point(97) = {973.06,0.00,-519.50,cln};//far right lower point
//make lines encompassing all the background points - counter clock wise fashion
Line(94) = {1,94};
Line(95) = {94,95};
Line(96) = {95,97};
Line(97) = {97,96};
Line(98) = {96,70};
//Add line loops and plane surfaces for the Neumann region
Line Loop(2) = {94, 95, 96, 97, 98, 93, -91, -90, -89, -88, -87, -86, -85, -84, -83, -82, -81, -80, -79, -78, -77, -76, -75, -74, -73, -72, -71, -70, -92};
Plane Surface(1) = {1, 2};//Coarse mesh region surface

//Adding polygons
//end of polygons.
Plane Surface(2) = {1};//Fine mesh region surface

//Make a physical surface
Physical Surface(1) = {2, 1};

//End gmsh script
