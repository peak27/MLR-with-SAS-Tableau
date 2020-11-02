OPTIONS VALIDVARNAME=V7;

proc import datafile='F:\Users\mjpk2\OneDrive\Desktop\Documents\Spring 2020\Stat - 450\Final Project\final diamonds.csv'
	DBMS=csv
	out=diamonds/*name of the imported file*/
	replace; /*use replace option to allow overright the data set if you run it again */
	getnames=yes;
run;

proc reg data=diamonds plots(unpack)=diagnostics;
model price=carat depth table length_in_mm width_of_mm cut_Good cut_Ideal cut_Premium cut_Very_Good 
			color_D color_E color_F color_G color_H color_I;
run;


proc reg data=diamonds ;
model price=carat depth table length_in_mm width_of_mm depth_in_mm cut_Good cut_Ideal cut_Premium cut_Very_Good 
			color_D color_E color_F color_G color_H color_I /selection = stepwise;
run;

proc reg data=diamonds;
model price=caret depth/lackfit;
run;