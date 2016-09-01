int startX = 250;
int startY = 0;
int endX = 250;
int endY = 0;
void setup()
{
  size(500,300);
  strokeWeight(4);
  noLoop();
}
void draw()
{	
	background(0);
	while (endY < 300) 
	{
		stroke(210,255,255);
		endX = startX + (int)(Math.random()*18)-9;
		endY = startY + (int)(Math.random()*9);
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}
}
void mousePressed()
{
	startX = 250;
	startY = 0;
	endX = 250;
	endY = 0;		
	redraw();
}

int xroof = -26;
int yroof = -67;
int xstairs = 1;
int ystairs = 0;
void fence (xfence,yfence) {
rect(xfence+58,yfence+238,6,27);
rect(xfence+64,yfence+245,18,20);
rect(xfence+82,yfence+238,6,27);   
}
var stairs = function (xs,ys) {
    line(xs+190,ys+200,xs+248,ys+200);
};
background(161, 216, 245);


rect(-10,200,410,200);
fill(242, 230, 8);
quad(xroof+69,yroof+182,xroof+183,yroof+123,xroof+274,yroof+123,xroof+390,yroof+182);
fill(51, 50, 50);
quad(xroof+69,yroof+182,xroof+99,yroof+195,xroof+359,yroof+195,xroof+389,yroof+182);
fill(112, 4, 13);
rect(xroof+99,yroof+195,259,13);
fill(242, 230, 8);
quad(xroof+99,yroof+209,xroof+359,yroof+209,xroof+425,yroof+231,xroof+30,yroof+231);
fill(51, 50, 50);
quad(xroof+92,yroof+245,xroof+369,yroof+245,xroof+425,yroof+231,xroof+30,yroof+231);
fill(150, 3, 15);
rect(xroof+25,yroof+267,403,43);
fill(209, 217, 48);
rect(xroof+92,yroof+244,280,16);
fill(150, 3, 15);
rect(xroof+92,yroof+259,280,43);
fill(0, 0, 0);
rect(126,200,39,43);
rect(186,200,39,43);
rect(247,200,39,43);


fill(186, 2, 2);
for (var j = 20; j < 302; j+=25) {
    rect(j+46,192,5,52);
}


fill(243, 245, 220);
for (var j = -68; j < 49; j+=24) {
    fence(j,-21);
}


for (var j = 477; j > 224; j-=24) {
    fence(j,-21);
}


for (var j = -99; j < 40; j+=24) {
    fence(j,-4);
}


for (var j = 484; j > 224; j-=24) {
    fence(j,-4);
}


for (var j = -82; j < 49; j+=24) {
    fence(j,13);
}


for (var j = 491; j > 224; j-=24) {
    fence(j,13);
}


rect(-7,278,108,35);
rect(305,278,108,35);


quad(xstairs+117,ystairs+244,xstairs+60,ystairs+358,xstairs+119,ystairs+358,xstairs+176,ystairs+244);


for (var j = 48; j < 160; j+=5) {
    stairs(-50-0.5*j,j);
}


quad(xstairs+236,ystairs+244,xstairs+294,ystairs+358,xstairs+352,ystairs+358,xstairs+294,ystairs+244);


for (var j = 48; j < 160; j+=5) {
    stairs(24+0.5*j,j);
} 

line(176,244,236,244);
line(294,358,119,358);
