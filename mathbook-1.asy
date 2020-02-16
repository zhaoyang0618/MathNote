if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="mathbook-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import math;
add(scale(1cm) * grid(4,4,gray));
label("S", (-0.2cm,0), Relative(S) );
for(int i=0;i<4;++i)
{
real x = i*1cm;
real nextx = 1cm*(i+1);
label("(", (0,x)--(0,nextx), Relative(W) );
label("+", (x,4cm)--(nextx,4cm), Relative(W) );
}
label("G", (4.2cm,4cm), Relative(N) );
draw( (0cm,0cm)--(0cm,1cm), black, Arrow );
draw( (0cm,1cm)--(0cm,2cm), black, Arrow );
draw( (0cm,2cm)--(1cm,2cm), black, Arrow );
draw( (1cm,2cm)--(2cm,2cm), black, Arrow );
draw( (2cm,2cm)--(2cm,3cm), black, Arrow );
draw( (2cm,3cm)--(3cm,3cm), black, Arrow );
draw( (3cm,3cm)--(3cm,4cm), black, Arrow );
draw( (3cm,4cm)--(4cm,4cm), black, Arrow );
