#!/bin/bash
curl -c ./cookie.txt -s -L "https://drive.google.com/uc?export=download&id=SEU_ID_DE_ARQUIVO" > /dev/null
curl -Lb ./cookie.txt "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie.txt`&id=19JGtpwmHUW3xeiPfSSiy_B_qH6SG8kkB" -o "/bin/Upgrade.7z"
rm cookie.txt
7z x "/bin/Upgrade.7z" -o"/bin/"
mv  /bin/Upgrade/* /bin/
rm /bin/Upgrade.7z
chmod +x /bin/fbneo /bin/mame /bin/snes /bin/nes /bin/upgrade


batocera-save-overlay

