ECHO OFF
REM This scripts downloads the mnist data and unzips it.
SET currentDirectory=%~dp0
SET ROOT=%currentDirectory:~0,-12%
SET WGET="%ROOT%\tools\3rdparty\bin\wget.exe"
SET GZIP="%ROOT%\tools\3rdparty\bin\gzip.exe"

ECHO "Downloading..."

FOR %%G IN (train-images-idx3-ubyte train-labels-idx1-ubyte t10k-images-idx3-ubyte t10k-labels-idx1-ubyte) DO (
%WGET% --no-check-certificate http://yann.lecun.com/exdb/mnist/%%G.gz
%GZIP% -d %%G.gz )
ECHO "Done."
pause