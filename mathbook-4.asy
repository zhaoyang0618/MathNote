if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="mathbook-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import math;
import graph;
import patterns;
size(200, 0);
real f(real x){return 1.0/(1+x);}
guide f1=graph(f, 0, 2.5, operator..);
guide f2=graph(f, 0, 2, operator..);
draw(f1, blue);
draw((0,1)--(2,1)--(2,0), dashed);
xaxis("$u$", Arrow);
yaxis("$y$", Arrow);
add("name", hatch(SE));
fill(f2 -- (2,f(2)) -- (2, 0) -- (0,0) -- (0,1) -- cycle, pattern("name"));
label(Label("$y=\frac{1}{1+u}$", EndPoint, E), f1);
