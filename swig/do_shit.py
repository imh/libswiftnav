

# import test_swig
import dgnss_management
import numpy

# swig -python test_swig.i
# gcc -c -fPIC test_swig.c
# gcc -c -fPIC test_swig_wrap.c -I/usr/local/Cellar/python/2.7.8_2/Frameworks/Python.framework/Versions/2.7/include/python2.7 -I/usr/local/Cellar/numpy/1.9.0/lib/python2.7/site-packages/numpy/core/include/
# ld -bundle -flat_namespace -undefined suppress -o _test_swig.so *.o

print 1

# x = numpy.array([1,2,3], 'd')
# y = numpy.array([0,0,0], 'd')
# test_swig.plus_one_vec(x, y)
# print y