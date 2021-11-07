#!/system/bin/sh
#$0
# D2DF stands for Destroy or Disable the Default Folder a small tool to disable some features or permanently remove unwanted folders, manually deleting it the media system can still create a folder on the sdcard (default automatically) and then I named it the default folder.
# Built 19 Oct 2021 16.46.51 [v1.0.0]
# Update 29 Oct 2021 14.03.32 [v1.0.2]
# Copyright (c) 2021 Luis Adha on https://github.com/luisadha
# Report bugs: adharudin14@gmail.com
#GNU################################################## BEGIN LICENSE GPLv3
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#  You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
#GPL################################################## END LICENSE http://www.gnu.org/licenses
BL='\e[01;90m' > /dev/null 2>&1; # Black
R='\e[01;91m' > /dev/null 2>&1; # Red
G='\e[01;92m' > /dev/null 2>&1; # Green
Y='\e[01;93m' > /dev/null 2>&1; # Yellow
B='\e[01;94m' > /dev/null 2>&1; # Blue
P='\e[01;95m' > /dev/null 2>&1; # Purple
C='\e[01;96m' > /dev/null 2>&1; # Cyan
W='\e[01;97m' > /dev/null 2>&1; # White
N='\e[0m' > /dev/null 2>&1; # Null
DELAY="2";
VERSI="v1.0.2";
NOTFOUND="automatic system in progress";
ZERO="Alive";
ONE="Disable";
DIE="Disabled";
ONELSE="Destory";
DIED="R.I.P";

#FOLDERS
clear
# .FACE [samsung devices]
FACE='/sdcard/.face';
if [ -e "$FACE" ]; then
	 if [ -d "$FACE" ]; then
		 FACE=$G"${ZERO}"$N
	 fi
	 if [ -f "$FACE" ]; then 
		 FACE=$B"${DIE}"$N
	 fi
 else
		 FACE=$R"${NOTFOUND}"$N
 fi
# DCIM [all devices]
DCIM="/sdcard/Dcim";
if [ -e "$DCIM" ]; then
	 if [ -d "$DCIM" ]; then
		 DCIM=$G"${ZERO}"$N
	 fi
	 if [ -f "$DCIM" ]; then 
		 DCIM=$BL"${DIED}"$N
	 fi
 else
		 DCIM=$R"${NOTFOUND}"$N
 fi
# DOWNLOAD [all devices] 
DOWNLOAD="/sdcard/Download";
if [ -e "$DOWNLOAD" ]; then
	if [ -d "$DOWNLOAD" ]; then
		 DOWNLOAD=$G"${ZERO}"$N
	fi
	if [ -f "$DOWNLOAD" ]; then
     DOWNLOAD=$BL"${DIED}"$N
	fi
else
	   DOWNLOAD=$R"${NOTFOUND}"$N
fi
# PICTURES [all devices]
PICTURES="/sdcard/Pictures";
if [ -e "$PICTURES" ]; then
	if [ -d "$PICTURES" ]; then
		 PICTURES=$G"${ZERO}"$N
	fi
	if [ -f "$PICTURES" ]; then
     PICTURES=$BL"${DIED}"$N
	fi
else
	   PICTURES=$R"${NOTFOUND}"$N
fi
# PLAYLISTS [all devices]
PLAYLISTS="/sdcard/Playlists";
if [ -e "$PLAYLISTS" ]; then
	if [ -d "$PLAYLISTS" ]; then
		 PLAYLISTS=$G"${ZERO}"$N
	fi
	if [ -f "$PLAYLISTS" ]; then
     PLAYLISTS=$B"${DIE}"$N
	fi
else
	   PLAYLISTS=$R"${NOTFOUND}"$N
fi
### RINGTONES [all devices]
RINGTONES="/sdcard/Ringtones";
if [ -e "$RINGTONES" ]; then
	if [ -d "$RINGTONES" ]; then
		 RINGTONES=$G"${ZERO}"$N
	fi
	if [ -f "$RINGTONES" ]; then
     RINGTONES=$B"${DIE}"$N
	fi
else
	   RINGTONES=$R"${NOTFOUND}"$N
fi
### SOUNDS [all devices]
SOUNDS="/sdcard/Sounds";
if [ -e "$SOUNDS" ]; then
	if [ -d "$SOUNDS" ]; then
		 SOUNDS=$G"${ZERO}"$N
	fi
	if [ -f "$SOUNDS" ]; then
     SOUNDS=$B"${DIE}"$N
	fi
else
	   SOUNDS=$R"${NOTFOUND}"$N
fi
### MOVIES
MOVIES="/sdcard/Movies"; 
if [ -e "$MOVIES" ]; then
	if [ -d "$MOVIES" ]; then
		 MOVIES=$G"${ZERO}"$N
	fi
	if [ -f "$MOVIES" ]; then
     MOVIES=$BL"${DIED}"$N
	fi
else
	   MOVIES=$R"${NOTFOUND}"$N
fi
### MUSIC
MUSIC="/sdcard/Music";
if [ -e "$MUSIC" ]; then
   if [ -d "$MUSIC" ]; then
      MUSIC=$G"${ZERO}"$N
   fi
   if [ -f "$MUSIC" ]; then
      MUSIC=$BL"${DIED}"$N
   fi
else
      MUSIC=$R"${NOTFOUND}"$N
fi

####END-LIST

#ABCDEFGHIJKLNMOPQRSTUVWXYZ

function menu() {
echo -e $W"D2DF version $VERSI "$N
echo -e $W"List Default Folders: " $N
echo -e $W"1. .face        | $FACE "$N
echo -e $W"2. DCIM         | $DCIM "$N
echo -e $W"3. Download     | $DOWNLOAD   "$N
echo -e $W"4. Pictures     | $PICTURES   "$N
echo -e $W"5. Movies       | $MOVIES     "$N
echo -e $W"6. Music        | $MUSIC "$N
echo -e $W"7. Playlist     | $PLAYLISTS  "$N
echo -e $W"8. Ringtones    | $RINGTONES "$N
echo -e $W"9. Sounds       | $SOUNDS " $N
echo -e $W"0. Exit "$N
echo "";
echo -e -n $W"^Choose one of these[0-9] >+";
read main



while :
do

case $main in
		1)
		while :
		do
FACE="/sdcard/.face";
if [ -e "$FACE" ]; then
	 if [ -d "$FACE" ]; then
		 FACE=$G"${ZERO}"$N
	 fi
	 if [ -f "$FACE" ]; then 
		 FACE=$B"${DIE}"$N
	 fi
 else
		 FACE=$R"${NOTFOUND}"$N
 fi
 
     clear
		echo -e $Y'[Destroy The Default Folder]'$N
     echo -e $Y'FACE'$N
		echo ''
		echo -e $W"CURRENT:$FACE "$N
		echo -e $W"1. Default"$N
		echo -e $W"2. Disable"$N
		echo -e $W'0. Go Back'$N
		echo -e -n $W'^Choose one of these[0-2] >+'$N

		read disable


		case $disable in
			1)
      rm -f /sdcard/.face > /dev/null 2>&1;
      mkdir /sdcard/.face
			;;
			2)
     rm -rf /sdcard/.face
     touch /sdcard/.face > /dev/null 2>&1;
			;;
			0)
			clear
			menu;
			;;
		esac
   sleep $DELAY
done
        ;;
############
        2)
	while :
		do
DCIM="/sdcard/DCIM";
if [ -e "$DCIM" ]; then
	 if [ -d "$DCIM" ]; then
		 DCIM=$G"${ZERO}"$N
	 fi
	 if [ -f "$DCIM" ]; then 
		 DCIM=$BL"${DIED}"$N
	 fi
 else
		 DCIM=$R"${NOTFOUND}"$N
 fi
		clear
     echo -e $Y'[Destroy or Disable The Default Folder]'$N
     echo -e $Y'DCIM'$N
     echo ''
		echo -e $W"CURRENT:$DCIM "$N
		echo -e $W"1. Default"$N
		echo -e $W"2. Destroy"$N
		echo -e $W'0. Go Back'$N
		echo -e -n $W'^Choose one of these[0-2] >+'$N

		read disable


		case $disable in
			1)
      rm -f /sdcard/DCIM > /dev/null 2>&1;
      mkdir /sdcard/DCIM
			;;
			2)
      echo "Destroy!!? files under DCIM will be remove";
      echo "[1:CONTINUE,0:BACK]";
      read PROMPT
      case $PROMPT in
      1)
      rm -rf /sdcard/DCIM 
      touch /sdcard/DCIM > /dev/null 2>&1;
      ;;
      0)
      break
      ;;
      esac
			;;
			0)
			clear
			menu;
			;;
		esac
   sleep $DELAY
done
        ;;
        3)
############ 
        while :
		do
DOWNLOAD="/sdcard/Download";
if [ -e "$DOWNLOAD" ]; then
	if [ -d "$DOWNLOAD" ]; then
		 DOWNLOAD=$G"${ZERO}"$N
	fi
	if [ -f "$DOWNLOAD" ]; then
     DOWNLOAD=$BL"${DIED}"$N
	fi
else
	   DOWNLOAD=$R"${NOTFOUND}"$N
fi
		clear
		echo -e $Y'[Destroy or Disable The Default Folder]'$N
     echo -e $Y'Download'$N
		echo ''
		echo -e $W"CURRENT:$DOWNLOAD "$N
		echo -e $W"1. Default "$N
		echo -e $W"2. Destroy ${R}[Not Recomended]"$N
		echo -e $W'0. Go Back'$N
		echo -e -n $W'^Choose one of these[0-2] >+'$N

		read disable

		case $disable in
			1)
      rm -f /sdcard/Download > /dev/null 2>&1;
      mkdir /sdcard/Download
			;;
			2)
echo "Destroy!!? files under Download will be remove";
      echo "[1:CONTINUE,0:BACK]";
      read PROMPT
      case $PROMPT in
      1)
        rm -rf /sdcard/Download
        touch /sdcard/Download > /dev/null 2>&1;
      ;;
      0)
      break
      ;;
      esac
			;;
			0)
       clear
       menu;
			;;
		esac
   sleep $DELAY
done
        ;;
        4)
###########
while :
		do
PICTURES="/sdcard/Pictures";
if [ -e "$PICTURES" ]; then
	if [ -d "$PICTURES" ]; then
		 PICTURES=$G"${ZERO}"$N
	fi
	if [ -f "$PICTURES" ]; then
     PICTURES=$BL"${DIED}"$N
	fi
else
	   PICTURES=$R"${NOTFOUND}"$N
fi
		clear
		echo -e $Y'[Destroy or Disable The Default Folder]'$N
     echo -e $Y'Pictures'$N
		echo ''
		echo -e $W"CURRENT:$PICTURES "$N
     echo -e $W"1. Default "$N
		echo -e $W"2. Destroy ${R}[Not Recomended]"$N
		echo -e $W'0. Go Back'$N
		echo -e -n $W'^Choose one of these[0-2] >+'$N

		read disable

		case $disable in
			1)
      rm -f /sdcard/Pictures > /dev/null 2>&1;
      mkdir /sdcard/Pictures
			;;
			2)
echo "Destroy!!? files under Pictures will be remove";
      echo "[1:CONTINUE,0:BACK]";
      read PROMPT
      case $PROMPT in
      1)
      rm -rf /sdcard/Pictures
      touch /sdcard/Pictures > /dev/null 2>&1;
      ;;
      0)
      break
      ;;
      esac
			;;
			0)
        clear
        menu;
			;;
		esac
   sleep $DELAY
done
    ;;
    5)
while :
     do
MOVIES="/sdcard/Movies"; 
if [ -e "$MOVIES" ]; then
	if [ -d "$MOVIES" ]; then
		 MOVIES=$G"${ZERO}"$N
	fi
	if [ -f "$MOVIES" ]; then
     MOVIES=$BL"${DIED}"$N
	fi
else
	   MOVIES=$R"${NOTFOUND}"$N
fi
		clear
		echo -e $Y'[Destroy or Disable The Default Folder]'$N
     echo -e $Y'Movies'$N
		echo ''
		echo -e $W"CURRENT:$MOVIES"$N
     echo -e $W"1. Default "$N
		echo -e $W"2. Destroy ${R}[Not Recomended]"$N
		echo -e $W'0. Go Back'$N
		echo -e -n $W'^Choose one of these[0-2] >+'$N

		read disable

		case $disable in
			1)
      rm -f /sdcard/Movies > /dev/null 2>&1;
      mkdir /sdcard/Movies
			;;
			2)
echo "Destroy!!? files under Movies will be remove";
      echo "[1:CONTINUE,0:BACK]";
      read PROMPT
      case $PROMPT in
      1)
      rm -rf /sdcard/Movies
      touch /sdcard/Movies > /dev/null 2>&1;
      ;;
      0)
      break
      ;;
      esac
			;;
			0)
        clear
        menu;
			;;
		esac
   sleep $DELAY
done
    ;;
    6)
while :
     do
MUSIC="/sdcard/Music";
if [ -e "$MUSIC" ]; then
   if [ -d "$MUSIC" ]; then
      MUSIC=$G"${ZERO}"$N
   fi
   if [ -f "$MUSIC" ]; then
      MUSIC=$BL"${DIED}"$N
   fi
else
      MUSIC=$R"${NOTFOUND}"$N
fi
		clear
		echo -e $Y'[Destroy or Disable The Default Folder]'$N
     echo -e $Y'Music'$N
		echo ''
		echo -e $W"CURRENT:$MUSIC"$N
		echo -e $W"1. Default "$N
		echo -e $W"2. Disable "$N
		echo -e $W'0. Go Back'$N
		echo -e -n $W'^Choose one of these[0-2] >+'$N

		read disable

		case $disable in
			1)
      rm -f /sdcard/Music > /dev/null 2>&1;
      mkdir /sdcard/Music
			;;
			2)
echo "Destroy!!? files under Music will be remove";
      echo "[1:CONTINUE,0:BACK]";
      read PROMPT
      case $PROMPT in
      1)
      rm -rf /sdcard/Music
      touch /sdcard/Music > /dev/null 2>&1;
      ;;
      0)
      break
      ;;
      esac
			;;
			0)
			clear
			menu;
			;;
		esac
   sleep $DELAY
done
    ;;
    7)
###########
while :
		do
PLAYLISTS="/sdcard/Playlists";
if [ -e "$PLAYLISTS" ]; then
	if [ -d "$PLAYLISTS" ]; then
		 PLAYLISTS=$G"${ZERO}"$N
	fi
	if [ -f "$PLAYLISTS" ]; then
     PLAYLISTS=$B"${DIE}"$N
	fi
else
	   PLAYLISTS=$R"${NOTFOUND}"$N
fi
		clear
		echo -e $Y'[Destroy or Disable The Default Folder]'$N
     echo -e $Y'Playlists'$N
		echo ''
		echo -e $W"CURRENT:$PLAYLISTS "$N
		echo -e $W"1. Default "$N
		echo -e $W"2. Disable "$N
		echo -e $W'0. Go Back'$N
		echo -e -n $W'^Choose one of these[0-2] >+'$N

		read disable

		case $disable in
			1)
      rm -f /sdcard/Playlists > /dev/null 2>&1;
      mkdir /sdcard/Playlists
			;;
			2)
      rm -rf /sdcard/Playlists 
      touch /sdcard/Playlists > /dev/null 2>&1;
			;;
			0)
			clear
			menu;
			;;
		esac
   sleep $DELAY
done
      ;;
      8)
###########
while :
		do
RINGTONES="/sdcard/Ringtones";
if [ -e "$RINGTONES" ]; then
	if [ -d "$RINGTONES" ]; then
		 RINGTONES=$G"${ZERO}"$N
	fi
	if [ -f "$RINGTONES" ]; then
     RINGTONES=$B"${DIE}"$N
	fi
else
	   RINGTONES=$R"${NOTFOUND}"$N
fi
		clear
		echo -e $Y'[Destroy or Disable The Default Folder]'$N
     echo -e $Y'Ringtones'$N
		echo ''
     echo -e $W"CURRENT:$RINGTONES"$N
		echo -e $W"1. Default "$N
		echo -e $W"2. Disable "$N
		echo -e $W'0. Go Back'$N
		echo -e -n $W'^Choose one of these[0-2] >+'$N

		read disable


		case $disable in
			1)
      rm -f /sdcard/Ringtones > /dev/null 2>&1;
      mkdir /sdcard/Ringtones 
			;;
			2)
       rm -rf /sdcard/Ringtones 
       touch /sdcard/Ringtones > /dev/null 2>&1;
			;;
			0)
			clear
			menu;
			;;
		esac
   sleep $DELAY
done
       ;;
       9)
while :
		do
SOUNDS="/sdcard/Sounds";
if [ -e "$SOUNDS" ]; then
	if [ -d "$SOUNDS" ]; then
		 SOUNDS=$G"${ZERO}"$N
	fi
	if [ -f "$SOUNDS" ]; then
     SOUNDS=$B"${DIE}"$N
	fi
else
	   SOUNDS=$R"${NOTFOUND}"$N
fi
		clear
		echo -e $Y'[Destroy or Disable The Default Folder]'$N
     echo -e $Y'Sounds'$N
		echo ''
		echo -e $W"CURRENT:$SOUNDS "$N
		echo -e $W"1. Default "$N
		echo -e $W"2. Disable "$N
		echo -e $W'0. Go Back'$N
		echo -e -n $W'^Choose one of these[0-2] >+'$N
		read disable


		case $disable in
			1)
      rm -f /sdcard/Sounds > /dev/null 2>&1;
      mkdir /sdcard/Sounds
			;;
			2)
      rm -rf /sdcard/Sounds 
      touch /sdcard/Sounds > /dev/null 2>&1;
			;;
			0)
			clear
			menu;
			;;
		esac
   sleep $DELAY
done
###########
       ;;
###########
		0)
		clear
		exit 0
        ;;
        *)
          clear
          echo "wrong input!";
          sleep 1.5
          clear
          menu;
		;;
	esac
    sleep $DELAY
	done
}

menu;


