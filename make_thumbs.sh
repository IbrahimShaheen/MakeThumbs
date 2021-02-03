FPS=$1
THUMBS_DIR="thumbs"

mkdir "$THUMBS_DIR"
for video_file in *
do
	ffmpeg -i "$video_file" -vf fps=$FPS -q:v 0 "$THUMBS_DIR/'$video_file'_%d.jpg"
done
