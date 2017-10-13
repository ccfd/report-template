#include <stdio.h>
#include <stdlib.h>
#include "rk4.h"

double c=1, k1=10, k2=3;

void fun(double t, double * x, double * dxdt) {
  double k = k1*(1+k2*x[0]*x[0]);
  dxdt[0] = x[1];
  dxdt[1] = - k*x[0] - c*x[1];
}

int run(double x0, double v0, double T, int N, char *name) {
  double t = 0;
  double x[2],nx[2];
  double dt = T/N;
  x[0] = x0;
  x[1] = v0;
  printf("k1=%lg k2=%lg c=%lg\n",k1,k2,c);
  FILE *f = fopen(name,"w");
  fprintf(f,"T,X,V\n");
  for (int it=0; it<N; it++) {
    vrk4( t, x, dt, 2, fun, nx);
    for (int j=0; j<2; j++) x[j] = nx[j];
    t = t + dt;
    fprintf(f,"%lg,%lg,%lg\n",t,x[0],x[1]);
  }
  fclose(f);
  return 0;
}


int main() {
  c=0; k1=10; k2=0;
  run(1,0,20,1500,"linear.csv");
  c=0; k1=10/2; k2=3;
  run(1,0,20,1500,"nonlinear.csv");
  c=0.3; k1=10; k2=0;
  run(1,0,20,1500,"linear_dumper.csv");
  c=0.3; k1=10/2; k2=3;
  run(1,0,20,1500,"nonlinear_dumper.csv");
  return 0;
}
