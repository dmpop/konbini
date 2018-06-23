# Konbini コンビニコンビニ

A set of Bash shell scripts and desktop files that add useful context actions to the Dolphin browser. The accompanying installer Bash shell script automatically installs and configures all the required components. Konbini includes the following actions and scripts:

- [Photo Funnel](https://github.com/dmpop/photo-funnel), a simple graphical tool for importing, geotagging, and organizing photos and raw files. Run using the `pf` command.
- [Highrise](https://github.com/dmpop/highrise), a Bash shell script for generating super-resolution images from a stack of lower-resolution photos. Run using the `highrise -e [EXT] -d [DIR]` command. Replace `[EXT]` with the file extension of the source photos (e.g., *JPG* or *jpg*) and `[DIR]` with the absolute path to the directory containing source photos.
- Unbash script for fetching Unsplash photos matching the specified keyword. Run using the `unbash -c [NUMBER] -k [KEYWORD]` command.
- Geotag by City, a script for geotagging photos. Right-click on the desired photo, choose **Konbini &rarr; Geotag by City**.
- Show on OpenStreetMap, shows the position of the specified geotagged photo on the OpenStreetMap. Right-click on the desired photo, choose **Konbini &rarr; Show on OpenStreetMap**.
- Resize, a tool for resizing images using ImageMagick. Right-click on the desired photo, choose **Konbini &rarr; Resize**.
- Rename (Lower Case), rename photos using the jhead tool and change the file extension to lower case. The tool renames photos using the *YYYYMMDD-hhmmss* format (e.g., *19701101-115530*). Right-click on the desired photo, choose **Konbini &rarr; Rename using EXIF Datetime (Lower Case)**.
- Rename (Upper Case), rename photos using the jhead tool and change the file extension to upper case. The tool renames photos using the *YYYYMMDD-hhmmss* format (e.g., *19701101-115530*). Right-click on the desired photo, choose **Konbini &rarr; Rename using EXIF Datetime (Upper Case)**.
- [Expose](https://github.com/Jack000/Expose), a tool for generating static photo galleries. Switch to a directory contaning photos you want to publish and run the `expose` command.

## Installation

Run the `curl -sSL https://is.gd/konbini | bash` command.
