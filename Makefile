FFMPEG_BRANCH=4.4

ffmpeg-v4lrequest: Dockerfile.ffmpeg.aarch64
	docker build -f Dockerfile.ffmpeg.aarch64 . --build-arg FFMPEG_BRANCH_VER=$(FFMPEG_BRANCH) -t cptnalf/ffmpeg-rockchip64:$(FFMPEG_BRANCH)-request