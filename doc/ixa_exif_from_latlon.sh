#!/bin/bash
# GPL2 by yjmenezes at gmail.com; ver 1.0 - 2016-04-25
# Insert ExifTags into scanned analog aerial photos 
# sudo apt-get install libimage-exiftool-perl
# RMK:-ImageWidth=9728  = 224.7mm -ImageHeight=9984 = 230.6mm
# 1058dpi = 24.6482microns pixel size
# verificado posteriormente que dpi=23.9991microns Werlhi RM1
# adjusted atri_g84= absolute CPs from BINGO=dapor.dat reformated to atri_g84.txt
# Photo;LatWGS(g.gg);LonWGS(g.gg);AltitudeMSL(m)  
# 01_001.TIF;-8.523805130;-40.043544700;2785.308 
# 01_002.TIF;-8.523745470;-40.033249954;2784.890
function ajuda {
	echo "run inside jpg directory. input:" 1>&2
	echo "# Photo;LatWGS(g.gg);LonWGS(g.gg);AltitudeMSL(m)  " 1>&2
	echo "01_001.TIF;-8.523805130;-40.043544700;2785.308 " 1>&2
	echo $(basename $0) "< atri_g84.txt" 1>&2
	exit 1
}

if [ $# -ge 1 ]; then
	ajuda
fi
echo "writing tags" 1>&2
chmod ugo+r-x+w *jpg
grep -v \# | sed s/\;/\ /g | awk '{ print $1,$2,$3,$4 }' | sed s/\-//g | \
while read lin; do
    img=$(echo $lin  | awk '{ print $1 }' )
#echo $img 1>&2
    if [ -f $img ]; then
        echo $lin 1>&2
        lat=$(echo $lin  | awk '{ print $2 }')
        lon=$(echo $lin  | awk '{ print $3 }')
        alt=$(echo $lin  | awk '{ print $4 }')
        echo $lat $lon $alt 1>&2
#        exiftool -GPSLatitude=$lat -GPSLatitudeRef=S -GPSLongitude=$lon -GPSLongitudeRef=W -GPSAltitude=$alt -Make=ixa180 -Model=LMK -FocalLength=55.0 -ImageWidth=9728 -ImageHeight=9984 $img
        exiftool -GPSLatitude=$lat -GPSLatitudeRef=S -GPSLongitude=$lon -GPSLongitudeRef=W -GPSAltitude=$alt -GPSAltitudeRef="Above Sea Level" -FocalLength=55.0 $img
    fi
done
rm *original;
exit 0

PIXEL_X_DIMENSION
PIXEL_Y_DIMENSION
http://www.sno.phy.queensu.ca/~phil/exiftool/TagNames/EXIF.html

