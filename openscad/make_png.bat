FOR %%f in (*.scad)  DO openscad -o "..\images\%%~nf.png" --autocenter --viewall --imgsize=500,500 --projection=o --colorscheme=Nature "%%f" 