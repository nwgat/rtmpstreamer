./nginx
ffmpeg -r "60" -i rtmp://127.0.0.1:1935/live -map 0 -c:v libx264 -preset medium -level 4.1 -maxrate 6M -minrate 6M -bufsize 6M -g 120 -c:a aac -b:a 192k -strict -2 -flags +global_header -f flv rtmp://127.0.0.1/liveout

