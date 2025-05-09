make: all

all: compile
	upx -9 mp4stubs.exe
	del mp4stubs.obj

compile:
	ldc2 mp4stubs.d

clean:
	del mp4stubs.exe
