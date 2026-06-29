.PHONY: build clean serve

build:
	hugo --cleanDestinationDir

clean:
	rm -rf public

serve:
	hugo server -D
