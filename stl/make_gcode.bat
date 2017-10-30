FOR %%f in (*.stl)  DO slic3r-console "%%f" --load Citro_Ce_Sd.ini --output ..\gcode\%%~nf.gcode
