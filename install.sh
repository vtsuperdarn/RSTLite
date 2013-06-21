#!/bin/bash -x
mydir=$(pwd)
#if [ "" == "${RSTPATH}" ]
#then
echo "export RSTPATH=$mydir" >> ~/.bashrc
echo ". \$RSTPATH/.profile.bash" >> ~/.bashrc
#fi
source ~/.bashrc
export RSTPATH=$mydir
. $mydir/.profile.bash
echo $mydir

cd $mydir/dependencies/cdf33_0
make OS=linux ENV=gnu all
make install



cd $mydir/codebase/analysis/src.lib/cmpfit-1.2
make clean
make
if [ ! -d "$mydir/include" ]; then
  mkdir $mydir/include
fi
if [ ! -d "$mydir/include/analysis" ]; then
  mkdir $mydir/include/analysis
fi
cp mpfit.h $mydir/include/analysis
if [ ! -d "$mydir/lib" ]; then
  mkdir $mydir/lib
fi
cp libmpfit.a $mydir/lib
if [ ! -d "$mydir/bin" ]; then
  mkdir $mydir/bin
fi
cd $mydir/codebase/base/src.bin/build/makeall.1.21
make clean
make
cd $mydir
make.code superdarn rst

# Necessary for MacOS
if [ "$SYSTEM" == "darwin" ]
then
    cd $mydir/lib
    for f in *.dylib
    do
        install_name_tool -id "$RSTPATH/lib/$f" $f
    done
fi
