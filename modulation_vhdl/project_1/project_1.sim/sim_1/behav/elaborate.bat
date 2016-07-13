@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 1638aecda9aa48bdabfd6ca130f522bc -m32 --debug typical --relax -L xil_defaultlib -L secureip --snapshot test_qpskk_behav xil_defaultlib.test_qpskk -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
