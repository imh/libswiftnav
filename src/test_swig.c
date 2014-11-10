

#include "test_swig.h"

void plus_one_vec(double *x, double *y, int size)
{
  for (int i=0; i < size; i++) {
    y[i] = x[i] + 1;
  }
}

double plus_one(double x)
{
  return x + 1;
}