#include <graphics.h>
#include <conio.h>
#include <time.h>
// 窗口大小
#define WINDOWS_WIDTH 640
#define WINDOWS_HEIGHT 480
// 定义复数
struct COMPLEX
{
double re;
double im;
};
// 定义复数“乘”运算
COMPLEX operator * (COMPLEX a, COMPLEX b)
{
COMPLEX c;
c.re = a.re * b.re - a.im * b.im;
c.im = a.im * b.re + a.re * b.im;
return c;
}
// 定义复数“加”运算
COMPLEX operator + (COMPLEX a, COMPLEX b)
{
COMPLEX c;
c.re = a.re + b.re;
c.im = a.im + b.im;
return c;
}
int main()
{
float re[]={-0.75,0.45,0.285,-0.8,-0.835,-0.70176};
float im[]={0,-0.1428,0.01,0,0.156,-0.2321,-0.3842};
// 设置窗口大小
initgraph(WINDOWS_WIDTH,WINDOWS_HEIGHT);
// 绘制Julia Set
COMPLEX z,c;
// 设置迭代初值
c.re = -0.75,c.im = 0;
int i,j,k;
for(i=0;i<WINDOWS_WIDTH;i++)
{
for(j=0;j<WINDOWS_HEIGHT;j++)
{
z.re = -1.6 + 3.2 * (i/(float)WINDOWS_WIDTH);
z.im = -1.2 + 2.4 * (j/(float)WINDOWS_HEIGHT);
for(k=0;k<180;k++)
{
if(z.re * z.re + z.im * z.im > 4.0)
{
break;
}
z = z*z + c;
putpixel(i,j,(k>=180)?0:HSLtoRGB((float)((k<<5)%360),1.0,0.5));
}
}
}
// 按任意键退出
getch();
closegraph();
return 0;
}