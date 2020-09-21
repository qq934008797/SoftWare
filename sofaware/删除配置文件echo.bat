@echo off  
echo 正在删除配置文件！！！！

for /f "delims=" %%a in ('dir /b .\*.war') do (
 echo. 开始删除%%a配置
 del .\%%a\WEB-INF\*.Auth /S /Q
 rd .\%%a\WEB-INF\classes\config /S /Q
 rd .\%%a\mh /S /Q
 rd .\%%a\inc /S /Q
 rd .\%%a\WEB-INF\classes\rmi /S /Q

)

echo 删除完成完成！  
echo. & pause