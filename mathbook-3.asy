if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="mathbook-3";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import math;
add(scale(1cm) * grid(4,4,gray));
add(scale(1cm) * grid(5,3,gray));
label("$S$", (-0.2cm,0), Relative(S) );
for(int i=0;i<4;++i)
{
real x = i*1cm;
real nextx = 1cm*(i+1);
label("(", (0,x)--(0,nextx), Relative(W) );
label("+", (x,4cm)--(nextx,4cm), Relative(W) );
}
label("$G$", (4.2cm,4cm), Relative(N) );
draw( (0cm,0cm)--(0cm,1cm), black, Arrow );
draw( (0cm,1cm)--(0cm,2cm), black, Arrow );
draw( (0cm,2cm)--(1cm,2cm), black, Arrow );
draw( (1cm,2cm)--(2cm,2cm), black, Arrow );
draw( (2cm,2cm)--(3cm,2cm), black, Arrow );
draw( (3cm,2cm)--(3cm,3cm), black, Arrow );
draw( (3cm,3cm)--(4cm,3cm), black, Arrow );
draw( (4cm,3cm)--(5cm,3cm), black, Arrow );
draw( (0cm,-1cm)--(5cm,4cm), black+dashed );
pair o=(1cm, 0cm);
real r=1mm;
draw(circle(o, r), black);
o=(2cm, 1cm);
draw(circle(o, r), black);
o=(3cm, 2cm);
filldraw(circle(o, r), black);
o=(4cm, 3cm);
draw(circle(o, r), black);
label("$P$", (2cm,1cm)--(4cm,3cm), Relative(E) );
label("$G'$", (5.2cm,3cm), Relative(N) );
