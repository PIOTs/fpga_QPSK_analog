@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 0247d96bd28e4b56af7fa5f7738d0fbb -m32 --debug typical --relax -L xil_defaultlib -L secureip --snapshot one_behav xil_defaultlib.one -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
