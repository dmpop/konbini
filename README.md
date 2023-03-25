# Konbini :convenience_store: コンビニコンビニ

A set of Bash shell scripts and desktop files that add useful context actions for the Dolphin and Nemo file browsers. The accompanying installer Bash shell script automatically installs and configures all the required components. To access Konbini commands, right-click on the desired photo, and choose **Scripts -> Konbini** (Nemo) or **Konbini** (Dolphin). Konbini includes the following actions and scripts:

- **Geotag by city** geotags the selected photo by obtaining and writing geographical coordinates of the specified city.
- **Show on map** shows the position of the currently selected geotagged photo on Openstreetmap.
- **Resize** resizes the currently selected image and reduces its quality.
- **Rename (lower case)** renames photos using the _YYYYMMDD-hhmmss_ format and changes the file extension to lowercase.
- **Rename (UPPER CASE)** renames photos using the _YYYYMMDD-hhmmss_ format and changes the file extension to uppercase.
- **Recompress** recompresses photos using the _jpeg-recompress_ tool.
- **RAW to JPG** converts currently selected RAW file to the JPG format.
- **Remove EXIF** removes all EXIF metadata from the currently selected photo.
- **Shutter count** extracts the shutter count from the currently selected JPEG file.
- **Share file** shares the currently selected image on port 8000 using Python's built-in web server. Sharing disables automatically after 5 minutes.
- **Share folder** shares the currently selected folder on port 8000 using Python's built-in web server. Sharing disables automatically after 5 minutes.

## Installation

Run the following command in the terminal:

```
curl -sSL https://raw.githubusercontent.com/dmpop/konbini/main/install.sh | bash
```

The [Linux Photography](https://gumroad.com/l/linux-photography) book provides detailed instructions on using and customizing Konbini. Get your copy at [Google Play Store](https://play.google.com/store/books/details/Dmitri_Popov_Linux_Photography?id=cO70CwAAQBAJ) or [Gumroad](https://gumroad.com/l/linux-photography).

<img src="https://tokyoma.de/bookcovers/linux-photography.jpg" title="Linux Photography book" width="200"/>

## Author

Dmitri Popov [dmpop@cameracode.coffee](mailto:dmpop@cameracode.coffee)

## License

The [GNU General Public License version 3](http://www.gnu.org/licenses/gpl-3.0.en.html)
