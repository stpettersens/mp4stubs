import std.file;
import std.conv;
import std.stdio;
import std.string;
import std.format;

string get_part(string directory, uint index) {
	string[] dir = directory.split("\\");
	return strip(dir[(dir.length - index)]).replace(" ", ".");
}

string get_show(string directory) {
	return get_part(directory, 2);
}

string get_season(string directory) {
	string season = get_part(directory, 1).replace(".", "");
	return season.replace("Season", "");
}

void touch(string stub) {
	if (!exists(stub)) {
		auto f = File(stub, "w");
		f.close();
	}
}

void generate_mp4_stubs(string directory) {
	writeln();
	writeln("Current directory: " ~ directory);
	writeln();
	write("Enter number of episodes: ");
	uint episodes = to!uint(strip(readln()));
	writeln();
	string show = get_show(directory);
	string season = get_season(directory);
	for (uint i = 1; i <= episodes; i++) {
		string ep = format("%02d", i);
		string stub = format("%s.S%sE%s.mp4", show, season, ep);
		writeln(stub);
		touch(directory ~ "\\" ~ stub);
	}
}

int main(string[] args) {
	generate_mp4_stubs(args[1]);
	return 0;
}
