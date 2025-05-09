### mp4stubs
> Simple utility to generate placeholder stubs for MP4 files for TV BluRay/DVD rips of TV shows.

I use this with a "Generate MP4 Stubs" context menu (which triggers the Python script in the active directory, takes an input of episodes (e.g. "12") and takes the Season for the show from parent directory (e.g. "Season 2") and the show name from the parent directory of the Season (e.g. "Flight of the Conchords").

E.g. Triggering in:
C:\Users\Sam\Videos\Series\Flight of the Conchords\Season 2

Will create stubs for:

- Flight.of.the.Conchords.S2E01.mp4
- Flight.of.the.Conchords.S2E02.mp4
- Flight.of.the.Conchords.S2E03.mp4
- Flight.of.the.Conchords.S2E04.mp4
- Flight.of.the.Conchords.S2E05.mp4
- Flight.of.the.Conchords.S2E06.mp4
- Flight.of.the.Conchords.S2E07.mp4
- Flight.of.the.Conchords.S2E08.mp4
- Flight.of.the.Conchords.S2E09.mp4
- Flight.of.the.Conchords.S2E10.mp4
- Flight.of.the.Conchords.S2E11.mp4
- Flight.of.the.Conchords.S2E12.mp4

Which I then use with HandBrake to select as outputs when I rip from my source DVD.

* TODO: Add an NSIS installer to install the executable and the context menu into the Windows registry.
