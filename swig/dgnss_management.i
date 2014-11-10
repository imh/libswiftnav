%module(package="swiftnav") dgnss_management

%{
    #define SWIG_FILE_WITH_INIT
    #include "dgnss_management.h"
%}

%include "numpy.i"

%init %{
    import_array();
%}

%apply (double* IN_ARRAY1, int DIM1) {(double* x, int size_x)}

u8 get_amb_kf_mean(double *ambs);

