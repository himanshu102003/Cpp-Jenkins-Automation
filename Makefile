all: output.exe

output.exe: main.cpp
	g++ -o output.exe main.cpp
