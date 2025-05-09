make: all

all: compile
	upx -9 mp4stubs.exe

compile:
	ldc2 mp4stubs.d
	del mp4stubs.obj

clean:
	del mp4stubs.exe
