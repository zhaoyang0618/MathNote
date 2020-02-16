if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="mathbook-8";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import math;
import graph;
pair center=(0, 0);
real rr = 3cm;
draw(circle(center, rr), black);
real i=0;
real r=1mm;
for(i=0; i<12;++i)
{
real x = cos(i*3.14159/6.0);
real y = sin(i*3.14159/6.0);
pair o=(x*rr, y*rr);
filldraw(circle(o, r), black);
}

real delta=0-3.14159/6.0;
real a = 3.14159/2.0;
real sum = 0;
real prev = 0;
for(i=0;i<12;++i)
{
sum = sum + 5;

real rs = sum;
while(rs >= 12) rs = rs - 12;

real x1 = cos(prev*delta+a);
real y1 = sin(prev*delta+a);
real x2 = cos(rs*delta+a);
real y2 = sin(rs*delta+a);
draw((x1*rr, y1*rr)--(x2*rr, y2*rr),black);

if(rs == 0) break;
prev = rs;
}
