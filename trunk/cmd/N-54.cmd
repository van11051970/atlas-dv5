set N=N-54

cd ..
mkdir %temp%\mapconv
copy %N%.mp %temp%\mapconv\map.mp
copy soft\*.exe %temp%\mapconv
copy soft\map.cfg %temp%\mapconv\map.cfg
copy soft\%N%.txt %temp%\mapconv\map.txt

%systemdrive%
cd %temp%\mapconv
mp2mp.exe -h "map.txt" "map.cfg" "map-m.mp"
rename map-m.mp %N%-%date%.mp
%N%-%date%.mp
del %temp%\mapconv /S /Q /F
rmdir %temp%\mapconv