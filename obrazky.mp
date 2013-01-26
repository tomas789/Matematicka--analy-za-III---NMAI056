beginfig(1);

pair A, B, C;
pair SA, SB, SC;

A := (0,0);
B := (3cm,0);
C := (1.1cm,4cm);

SA := 1/2*(B+C);
SB := 1/2*(A+C);
SC := 1/2*(A+B);

draw A -- B -- C -- cycle;
draw SA -- SB -- SC -- cycle;

drawarrow A -- A + 1cm * dir(angle(B-A));
drawarrow B -- B + 2cm * dir(angle(C-B));
drawarrow C -- C + 3cm * dir(angle(A-C));

drawarrow SA -- SA + 1cm * dir(angle(SC-SA));
drawarrow SB -- SB + 1cm * dir(angle(SA-SB));
drawarrow SC -- SC + 1cm * dir(angle(SB-SC));

label(btex $\triangle_1$ etex, (0.7cm,0.5cm));
label(btex $\triangle_2$ etex, (2.3cm,0.5cm));
label(btex $\triangle_3$ etex, (1.2cm,2.8cm));
label(btex $\triangle_4$ etex, (1.4cm,1.3cm));

endfig;

end;
