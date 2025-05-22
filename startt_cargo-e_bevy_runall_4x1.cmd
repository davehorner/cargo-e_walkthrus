ffmpeg -ss 13 -t 27 -i "2025-05-21 19-26-33.mkv" -vf "fps=15,scale=1280:-1:flags=lanczos,palettegen" palette.png
ffmpeg -ss 13 -t 27 -i "2025-05-21 19-26-33.mkv" -i palette.png -filter_complex "[0:v]fps=15,scale=1280:-1:flags=lanczos,crop=1200:280:40:40[x];[x][1:v]paletteuse" output.gif
  
