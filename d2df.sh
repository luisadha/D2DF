#!/system/bin/sh
#$0
# D2DF stands for Destroy or Disable the Default Folder a small tool to disable some features or permanently remove unwanted folders, manually deleting it the media system can still create a folder on the sdcard (default automatically) and then I named it the default folder.
# Built 19 Oct 2021 16.46.51 [v1.0.0]
# Update 27 Oct 2021 13.17.16 [v1.0.1]
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


# .FACE [samsung devices]
clear
current_value=$(test -d /sdcard/.face; echo $?)
	if [ "$current_value" == '0' ]
	then
     CONDITION=$G"Alive"$N
	elif [ "$current_value" == '1' ]
	then
		 CONDITION=$B"Disabled"$N
	else
		 CONDITION=$BL"Unknown/Null"$N
	fi
# DCIM [all devices]
current_value=$(test -d /sdcard/DCIM; echo $?)
	if [ "$current_value" == '0' ]
	then
     CONDITION1=$G"Alive"$N
	elif [ "$current_value" == '1' ]
	then
		 CONDITION1=$BL"R.I.P"$N
	else
		 CONDITION1=$BL"Unknown/Null"$N
	fi
# DOWNLOAD [all devices] 
current_value=$(test -d /sdcard/Download; echo $?)
	if [ "$current_value" == '0' ]
	then
         DOWNLOAD=$G"Alive"$N
	elif [ "$current_value" == '1' ]
	then
		 DOWNLOAD=$BL"R.I.P"$N
	else
		 DOWNLOAD=$BL"Unknown/Null"$N
	fi

# PICTURES [all devices]
current_value=$(test -d /sdcard/Pictures; echo $?)
	if [ "$current_value" == '0' ]
	then
     PICTURES=$G"Alive"$N
	elif [ "$current_value" == '1' ]
	then
		 PICTURES=$BL"R.I.P"$N
	else
		 PICTURES=$BL"Unknown/Null"$N
	fi
# PLAYLISTS [all devices]
current_value=$(test -d /sdcard/Playlists; echo $?)
	if [ "$current_value" == '0' ]
	then
        PLAYLISTS=$G"Alive"$N
	elif [ "$current_value" == '1' ]
	then
		 PLAYLISTS=$B"Disabled"$N
	else
		 PLAYLISTS=$BL"Unknown/Null"$N
	fi

### RINGTONES [all devices]
current_value=$(test -d /sdcard/Ringtones; echo $?)
   if [ "$current_value" == '0' ]
	then
       RINGTONES=$G"Alive"$N
	elif [ "$current_value" == '1' ]
	then
       RINGTONES=$B"Disabled"$N
	else
       RINGTONES=$BL"Unknown/Null"$N
	fi

### SOUNDS [all devices]
current_value=$(test -d /sdcard/Sounds; echo $?)
   if [ "$current_value" == '0' ]
	then
       SOUNDS=$G"Alive"$N
	elif [ "$current_value" == '1' ]
	then
       SOUNDS=$B"Disabled"$N
	else
       SOUNDS=$BL"Unknown/Null"$N
	fi




function menu() {
echo -e $W"List of Folder: " $N
echo -e $W"1. .face        | $CONDITION "$N
echo -e $W"2. DCIM         | $CONDITION1 "$N
echo -e $W"3. Download     | $DOWNLOAD   "$N
echo -e $W"4. Pictures     | $PICTURES   "$N
echo -e $W"5. Playlist     | $PLAYLISTS "$N
echo -e $W"6. Ringtones    | $RINGTONES "$N
echo -e $W"7. Sounds       | $SOUNDS " $N
echo -e $W"0. Exit "$N
read main



while :
do

case $main in
		1)
		while :
		do
current_value=$(test -d /sdcard/.face; echo $?)
	if [ "$current_value" == '0' ]
	then
     CONDITION=$G"Alive"$N
	elif [ "$current_value" == '1' ]
	then
		 CONDITION=$B"Disabled"$N
	else
		 CONDITION=$BL"Unknown/Null"$N
	fi
 
     clear
		echo -e $Y'[Destroy The Default Folder]'$N
     echo -e $Y'FACE'$N
		echo ''
		echo -e $W"CURRENT:$CONDITION"$N
		echo -e $W"1. Default"$N
		echo -e $W"2. Disable"$N
		echo -e $W'0. Go Back'$N
		echo -e -n $W'[CHOOSE] :'$N
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
current_value=$(test -d /sdcard/DCIM; echo $?)
	if [ "$current_value" == '0' ]
	then
     CONDITION1=$G"Alive"$N
	elif [ "$current_value" == '1' ]
	then
		 CONDITION1=$BL"R.I.P"$N
	else
		 CONDITION1=$BL"Unknown/Null"$N
	fi


		clear
     echo -e $Y'[Destroy or Disable The Default Folder]'$N
     echo -e $Y'DCIM'$N
     echo ''
		echo -e $W"CURRENT:$CONDITION1"$N
		echo -e $W"1. Default"$N
		echo -e $W"2. Destroy"$N
		echo -e $W'0. Go Back'$N
     echo -e -n $W'[CHOOSE] :'$N
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
current_value=$(test -d /sdcard/Download; echo $?)
	if [ "$current_value" == '0' ]
	then
         DOWNLOAD=$G"Alive"$N
	elif [ "$current_value" == '1' ]
	then
		 DOWNLOAD=$BL"R.I.P"$N
	else
		 DOWNLOAD=$BL"Unknown/Null"$N
	fi


		clear
		echo -e $Y'[Destroy or Disable The Default Folder]'$N
     echo -e $Y'Download'$N
		echo ''
		echo -e $W"CURRENT:$DOWNLOAD "$N
		echo -e $W"1. Default "$N
		echo -e $W"2. Destroy ${R}[Not Recomended]"$N
		echo -e $W'0. Go Back'$N
		echo -e -n $W'[CHOOSE] :'$N
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
current_value=$(test -d /sdcard/Pictures; echo $?)
	if [ "$current_value" == '0' ]
	then
         PICTURES=$G"Alive"$N
	elif [ "$current_value" == '1' ]
	then
		 PICTURES=$BL"R.I.P"$N
	else
		 PICTURES=$BL"Unknown/Null"$N
	fi


		clear
		echo -e $Y'[Destroy or Disable The Default Folder]'$N
     echo -e $Y'Pictures'$N
		echo ''
		echo -e $W"CURRENT:$PICTURES "$N
     echo -e $W"1. Default "$N
		echo -e $W"2. Destroy ${R}[Not Recomended]"$N
		echo -e $W'0. Go Back'$N
		echo -e -n $W'[CHOOSE] :'$N
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
###########
while :
		do
current_value=$(test -d /sdcard/Playlists; echo $?)
	if [ "$current_value" == '0' ]
	then
        PLAYLISTS=$G"Alive"$N
	elif [ "$current_value" == '1' ]
	then
		 PLAYLISTS=$B"Disabled"$N
	else
		 PLAYLISTS=$BL"Unknown/Null"$N
	fi


		clear
		echo -e $Y'[Destroy or Disable The Default Folder]'$N
     echo -e $Y'Playlists'$N
		echo ''
		echo -e $W"CURRENT:$PLAYLISTS "$N
		echo -e $W"1. Default "$N
		echo -e $W"2. Disable "$N
		echo -e $W'0. Go Back'$N
		echo -e -n $W'[CHOOSE] :'$N
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
      6)
###########
while :
		do
current_value=$(test -d /sdcard/Ringtones; echo $?)
	if [ "$current_value" == '0' ]
	then
       RINGTONES=$G"Alive"$N
	elif [ "$current_value" == '1' ]
	then
       RINGTONES=$B"Disabled"$N
	else
       RINGTONES=$BL"Unknown/Null"$N
	fi


		clear
		echo -e $Y'[Destroy or Disable The Default Folder]'$N
     echo -e $Y'Ringtones'$N
		echo ''
     echo -e $W"CURRENT:$RINGTONES"$N
		echo -e $W"1. Default "$N
		echo -e $W"2. Disable "$N
		echo -e $W'0. Go Back'$N
		echo -e -n $W'[CHOOSE] :'$N

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
       7)
while :
		do
current_value=$(test -d /sdcard/Sounds; echo $?)
	if [ "$current_value" == '0' ]
	then
       SOUNDS=$G"Alive"$N
	elif [ "$current_value" == '1' ]
	then
       SOUNDS=$B"Disabled"$N
	else
       SOUNDS=$BL"Unknown/Null"$N
	fi


		clear
		echo -e $Y'[Destroy or Disable The Default Folder]'$N
     echo -e $Y'Sounds'$N
		echo ''
		echo -e $W"CURRENT:$SOUNDS "$N
		echo -e $W"1. Default "$N
		echo -e $W"2. Disable "$N
		echo -e $W'0. Go Back'$N
		echo -e -n $W'[CHOOSE] :'$N

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


