#!/bin/sh 

# boost 1.67

./b2 cxxflags="-std=c++14" install


# "cxxflags=-stdlib=libc++" << "linkflags=-stdlib=libc++" if ENV.compiler == :clang
