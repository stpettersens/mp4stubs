import os
from glob import glob
from pathlib import Path

def get_show(directory: str) -> str:
    return directory.split('\\')[-2].replace(' ', '.').strip()

def get_season(directory: str) -> str:
    return directory.split('\\')[-1].split('Season')[1].strip()
          
def generate_mp4_stubs() -> None:
    episodes: int = int(input("Enter number of episodes: "))
    show: str = get_show(os.getcwd())
    season: str = get_season(os.getcwd())
    for i in range(1, (episodes + 1)):
        ep: str = str(i).zfill(2)
        stub: str = f"{show}.S{season}E{ep}.mp4"
        print(stub)
        Path(os.path.join(os.getcwd(), stub)).touch()

if __name__ == "__main__":
    print()
    generate_mp4_stubs()
