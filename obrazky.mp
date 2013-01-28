verbatimtex
%&latex 
\documentclass{article} 
\begin{document}
etex

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

path p;
p := (-R,0) -- (-r,0){up} .. (r,0) -- (R,0){up} .. cycle;

draw p;
draw p rotated 180 shifted (0, -ep);

drawarrow subpath(1,1.5) of p;
drawarrow subpath(3,3.3) of p;
drawarrow subpath(3.3,3.7) of p;

drawarrow subpath(1,1.5) of p rotated 180 shifted (0,-ep);
drawarrow subpath(3,3.3) of p rotated 180 shifted (0,-ep);
drawarrow subpath(3.3,3.7) of p rotated 180 shifted (0,-ep);

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

beginfig(5);

draw (-3cm,0) -- (3cm,0);

path p;
p := (-2cm,1cm) -- (-1cm,0) -- (1cm,2cm);

draw p;
draw p shifted (1cm,0);

label.bot("Q", (2.5cm,0));
dotlabel.bot("X", (-1cm,0));
dotlabel.bot("Y", (0,0));

path xy;
xy := (-1cm,-.5cm) -- (0,-.5cm);

drawarrow xy;
drawarrow reverse xy;
label.bot("a", (-.5cm,-.5cm));

xy := (.5cm,.5cm) -- (.5cm,1.5cm);

drawarrow xy;
drawarrow reverse xy;
label.rt("a", (.5cm,1.1cm));

endfig;

beginfig(6);

draw (-2.5*cm,0) -- (4.5*cm,0);

path zub;
zub := (0,0) -- (.5*cm,1cm) -- (1.5*cm,-cm) -- (2cm,0);

draw zub shifted (-2*cm,0);
draw zub;
draw zub shifted (2cm,0);

draw (-2.3*cm,1cm) -- (4.3*cm,1cm) dashed (evenly scaled 1mm);
draw (-2.3*cm,-cm) -- (4.3*cm,-cm) dashed (evenly scaled 1mm);

label.rt(btex $\frac{r}{2}$ etex, (4.3cm,1cm));
label.rt(btex $-\frac{r}{2}$ etex, (4.3cm,-cm));

label(btex $z(x)$ etex, (3.2cm,0.5cm));

endfig;

beginfig(7);

draw fullcircle scaled 2cm;
draw fullcircle scaled 3.5cm shifted (.3cm,.1cm);

dotlabel.lft(btex $z_0$ etex, origin);
dotlabel.urt(btex $s$ etex, (origin shifted dir(30)*cm));
dotlabel.urt(btex $z$ etex, (origin shifted dir(40)*1.6cm));

endfig;

beginfig(8);

numeric u; u:=3;
path p;

draw (-58*u, 0) -- (58*u, 0);
draw (0, -2*u) -- (0, 33*u);

label.lrt("0", origin);
label.lrt(btex $\pi$ etex, (18*u, 0));
label.lrt(btex $-\pi$ etex, (-18*u, 0));
label.rt(btex $\pi^2$ etex, (0, 17*17/u));

label(btex $f(x) = x^2$ etex, origin) rotated 70 shifted (45, 40);

for i:=0 step 1 until 4 :
	draw (-36*u+i*18*u, 2) -- (-36*u+i*18*u, -2);
endfor;

draw (-2, 17*17/u) -- (2, 17*17/u);


p := (for i=-18 step 1 until 17 : (i, i*i) .. endfor (18, 18*18)) yscaled .3 xscaled 3;

draw p;
draw p shifted(36*u, 0);
draw p shifted(-36*u,0);


endfig;

beginfig(9);

numeric u; u:=3;
path p;

draw (-36*u, 0) -- (72*u, 0);
draw (0, -2*u) -- (0, 17*17*2/u+3);

label.lrt("0", origin);
label.lrt(btex $\pi$ etex, (18*u, 0));
label.lrt(btex $-\pi$ etex, (-18*u, 0));
label.rt(btex $4 \pi^2$ etex, (0, 17*17*2/u));

label(btex $f(x) = x^2$ etex, origin) rotated 55 shifted (60, 40);

for i:=0 step 1 until 6 :
	draw (-36*u+i*18*u, 2) -- (-36*u+i*18*u, -2);
endfor;

draw (-2, 17*17*2/u) -- (2, 17*17*2/u);

p := (for i=0 step 1 until 35 : (i, i*i) .. endfor (36, 36*36)) yscaled .15 xscaled 3;

draw p;
draw p shifted(36*u, 0);
draw p shifted(-36*u,0);


dotlabel.rt(btex $[0, 2 \pi^2]$ etex, (0, 17*17/u));
dotlabel.rt(btex $[2 \pi, 2 \pi^2]$ etex, (36*u, 17*17/u));
dotlabel.rt(btex $[0, 2 \pi^2]$ etex, (0, 17*17/u));

endfig;

end;
