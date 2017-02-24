from distutils.core import setup
from Cython.Build import cythonize

setup(
    name = 'skyline query dominate',
    ext_modules = cythonize('skyline_query/core.pyx'),
)