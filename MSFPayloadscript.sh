#!/bin/bash
HISTFILE=./msfps.log
history -r
Input (){
    while IFS="" read -r -e -d $'\n' -p "$1" UserInput; do 
        set -o history
        history -s "$UserInput"
        return 1
    done
    history -w
}

MENU=true
until [ $MENU == false ]
do
clear
cat << "EOF"
    /\___/\
   /       \
  l  u   u  l
--l----*----l--
   \   w   /     MSFPayloadScript AKA!! MSFPS v1.0 ^^
     ======
   /       \ __
   l        l\ \
   l        l/ /   -D4RKN0X-
   l  l l   l /
   \ ml lm /_/

EOF
    if [ ! -d "Output" ]; then
    mkdir Output
    fi

    PLTFRMVALID=false
    until [ "$PLTFRMVALID" == true ]
    do
        echo "[ Platforms ]"
        echo " [i] 1 - Windows"
        echo " [i] 2 - Linux"
        echo " [i] 3 - MacOS"
        echo " [i] 4 - Android"
        echo " [i] 5 - PHP"
        echo " [i] 6 - Perl"
        echo " [i] 7 - Python"
        echo ""
        echo " [i] 69 - Exit"
        echo ""
        Input "[i] Select Platform: "
        PLTFRM=$UserInput
        
        
        clear

        case $PLTFRM in
                    1)
                        PLATFORM=Windows
                        ext=exe
                        source Payloads/Windows.payloads.sh
                        PLTFRMVALID=true
                    ;;
                    2)
                        PLATFORM=Linux
                        ext=alf
                        source Payloads/Linux.payloads.sh
                        PLTFRMVALID=true
                    ;;
                    3)
                        PLATFORM=MacOS
                        ext=macho
                        source Payloads/MacOS.payloads.sh
                        PLTRMVALID=true
                    ;;
                    4)
                        PLATFORM=Android
                        ext=apk
                        source Payloads/Android.payloads.sh
                        PLTFRMVALID=true
                    ;;
                    5)
                        PLATFORM=PHP
                        ext=php
                        source Payloads/Php.payloads.sh
                        PLTFRMVALID=true
                    ;;
                    6)
                        PLATFORME=Perl
                        ext=pl
                        source Payloads/Perl.payloads.sh
                        PLTFRMVALID=true
                    ;;
                    7)
                        PLATFORM=Python
                        ext=py
                        source Payloads/Python.payloads.sh
                        PLTFRMVALID=true
                    ;;
                    69)
                        MENU=false
                        PLTFRMVALID=true
                    ;;
                    *)
                        PLTFRMVALID=false
        esac
    done

    if [ "$PLTFRM" != 69 ];then
        source Generate/PayloadOptions.sh    
        source Generate/Payload.sh
    fi
done

