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

beginfig(2);

numeric R;
R := 3.5cm;

draw (-R,0) -- (R,0);
draw (-R,0){up} ... (R,0);

dotlabel.rt(btex $2i$  etex, (0, 2cm));
dotlabel.rt(btex $i$   etex, (0, 1cm));
dotlabel.rt(btex $-i$  etex, (0,-1cm));
dotlabel.rt(btex $-2i$ etex, (0,-2cm));

label.urt(btex $R$ etex, (R, 0));

endfig;

beginfig(3);

numeric R, r, ep;

R := 2cm;
r := 0.4cm;
ep := 0.05cm;

drawarrow (-R,ep){up} .. (0,R+ep);
draw      (0,R+ep){right} .. (R,ep);
draw      (R,ep) -- (r,ep);
drawarrow (r,ep){up} .. (0,r+ep);
draw      (0,r+ep){left} .. (-r,ep);
draw      (-r,ep) -- (-R,ep);

draw      (-R,0) -- (-r,0);
drawarrow (-r,0){down} .. (0,-r);
draw      (0,-r){right} .. (r,0);
draw      (r,0) -- (R,0);
drawarrow (R,0){down} .. (0,-R);
draw      (0,-R){left} .. (-R,0);

label(btex $\varphi_1$ etex, (R,1.3cm));
label(btex $\varphi_2$ etex, (R,-1.3cm));

endfig;

beginfig(4);

draw (0,0) -- (3cm,0);

draw (0,0.7cm) -- (1cm,0.3cm);
draw (1cm,0.6cm) -- (2cm, 0.8cm);
draw (2cm,0.65cm) -- (3cm,0.25cm);

draw (1cm,0.45cm) withpen pencircle scaled 2;
draw (2cm,0.725cm) withpen pencircle scaled 2;

endfig;

end;
