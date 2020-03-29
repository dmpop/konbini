# Konbini :convenience_store: コンビニコンビニ

A set of Bash shell scripts and desktop files that add useful context actions for the Dolphin and Nautilus  file browsers. The accompanying installer Bash shell script automatically installs and configures all the required components. Konbini includes the following actions and scripts:

- **Geotag by City** geotags the selected photo by obtaining and writing geographical coordinates of the specified city. Right-click on the desired photo, choose **Konbini → Geotag by City**.
- **Add EXIF Comment** writes camera model, lens, and weather conditions in the *Comment* field of the photo's EXIF metadata. Right-click on the desired photo, choose **Konbini → Add EXIF Comment**. During the first run, specify the required information.
- **Resize**, a tool for resizing images using ImageMagick. Right-click on the desired photo, choose **Konbini → Resize**.
- **Rename (Lower Case)** renames photos using the jhead tool and change the file extension to lower case. The tool renames photos using the *YYYYMMDD-hhmmss* format (e.g., *19701101-115530*). Right-click on the desired photo, choose **Konbini → Rename using EXIF Datetime (Lower Case)**.
- **Rename (Upper Case)** renames photos using the jhead tool and change the file extension to upper case. The tool renames photos using the *YYYYMMDD-hhmmss* format (e.g., *19701101-115530*). Right-click on the desired photo, choose **Konbini → Rename using EXIF Datetime (Upper Case)**.
- **Recompress** recompresses photos using the jpeg-recompress tool.
- **RAW to JPG** converts currently selected RAW file to the JPG format. Right-click on the desired photo, choose **Konbini → RAW to JPG**.

## Installation

Run the `curl -sSL https://is.gd/konbini | bash` command.

## Acknowledgements

Icons curtesy of [Feather icons](https://feathericons.com/).

## Author

Dmitri Popov [dmpop@linux.com](mailto:dmpop@linux.com)

## License

The [GNU General Public License version 3](http://www.gnu.org/licenses/gpl-3.0.en.html)
