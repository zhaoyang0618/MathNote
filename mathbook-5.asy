if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="mathbook-5";
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

for(i=10;i>=0;i=i-2)
{
real x1 = cos((i+2)*3.14159/6.0+3.14159/2.0);
real y1 = sin((i+2)*3.14159/6.0+3.14159/2.0);
real x2 = cos(i*3.14159/6.0+3.14159/2.0);
real y2 = sin(i*3.14159/6.0+3.14159/2.0);
draw((x1*rr, y1*rr)--(x2*rr, y2*rr),black);
}
