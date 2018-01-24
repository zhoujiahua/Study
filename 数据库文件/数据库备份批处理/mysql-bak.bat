@echo off
echo mysql 备份
set yy=%date:~0,4%
set mm=%date:~5,2%
set dd=%date:~8,2%

if /i %time:~0,2% lss 10 set hh=0%time:~1,1%
if /i %time:~0,2% geq 10 set hh=%time:~0,2%
set mn=%time:~3,2%
set ss=%time:~6,2%

set date=%yy%-%mm%-%dd%
echo %date%
set filename=%date%

md "E:/mysql-bak/"%filename%

"H:/Program Files/MySQL/MySQL Server 5.5/bin/mysqldump.exe" -uCVAS -pP@$$W0RD --databases sxswdx >E:/mysql-bak/%filename%/[sxswdx]%filename%.sql


call :Date2Day %date% 7 delFolder （7天的前日期）
echo %delFolder%


echo rd /s /q "E:/mysql-bak/"%delFolder%
rd /s /q "E:/mysql-bak/"%delFolder%



rem   使用方法：call :Date2Day 2007-11-12 2 Day
rem   变量 Day 就是2007-11-12 减2的结果。
:Date2Day 计算指定天数 前/后 的日期 （封装）
@echo off&setlocal
for /f "tokens=1-3 delims=/-:\, " %%a in ('echo/%~1') do (
set /a yy=%%a,mm=100%%b%%100,dd=100%%c%%100)
set /a z=14-mm,z/=12,y=yy+4800-z,m=mm+12*z-3,j=153*m+2
set /a j=j/5+dd+y*365+y/4-y/100+y/400-2472633
set /a i=j-%~2,a=i+2472632,b=4*a+3,b/=146097,c=-b*146097,c/=4,c+=a
set /a d=4*c+3,d/=1461,e=-1461*d,e/=4,e+=c,m=5*e+2,m/=153,dd=153*m+2,dd/=5
set /a dd=-dd+e+1,mm=-m/10,mm*=12,mm+=m+3,yy=b*100+d-4800+m/10
(if %mm% LSS 10 set mm=0%mm%)&(if %dd% LSS 10 set dd=0%dd%)
endlocal&set %~3=%yy%-%f%%mm%-%f%%dd%&goto :EOF
