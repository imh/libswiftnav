%module(package="swiftnav") test_swig

%{
    #define SWIG_FILE_WITH_INIT
    #include "test_swig.h"
%}

%include "numpy.i"

%init %{
    import_array();
%}

%apply (double* IN_ARRAY1, int DIM1) {(double* x, int size_x)}
%apply (double* INPLACE_ARRAY1, int DIM1) {(double* y, int size_y)}

%rename (plus_one_vec) wrapped_plus_one_vec;
%inline %{
  void wrapped_plus_one_vec(double *x, int size_x,
                            double *y, int size_y) {
    if (size_x != size_y) {
      PyErr_Format(PyExc_ValueError, "Arrays of lengths (%d, %d) given. Need equal lenghts", size_x, size_y);
    }
    plus_one_vec(x, y, size_x);
  }
%}

void plus_one_vec(double *x, double *y, int m);