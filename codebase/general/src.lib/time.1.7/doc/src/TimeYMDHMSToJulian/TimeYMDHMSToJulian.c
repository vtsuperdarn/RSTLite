/* TimeYMDHMSToJulian.c
   ===================
   Author: R.J.Barnes
*/


#include <stdio.h>
#include <stdlib.h>
#include "rtime.h"


int main(int argc,char *argv[]) {

  int yr,mo,dy,hr,mt;
  double sc;
 
  double tval=0;

  yr=2002;
  mo=8;
  dy=30;
  hr=10;
  mt=0;
  sc=0;

  tval=TimeYMDHMSToJulian(yr,mo,dy,hr,mt,sc);

  fprintf(stdout,"TimeYMDHMSToJulian\n");

  fprintf(stdout,"Time: %.4d-%.2d-%.2d %.2d:%.2d:%.2d\n",
          yr,mo,dy,hr,mt, (int)sc);
  fprintf(stdout,"Tval: %g\n",tval);

  return 0;
}
