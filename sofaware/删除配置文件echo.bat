@echo off  
echo ����ɾ�������ļ���������

for /f "delims=" %%a in ('dir /b .\*.war') do (
 echo. ��ʼɾ��%%a����
 del .\%%a\WEB-INF\*.Auth /S /Q
 rd .\%%a\WEB-INF\classes\config /S /Q
 rd .\%%a\mh /S /Q
 rd .\%%a\inc /S /Q
 rd .\%%a\WEB-INF\classes\rmi /S /Q

)

echo ɾ�������ɣ�  
echo. & pause