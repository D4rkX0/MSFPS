VALIDFILENAME=false
until [ "$VALIDFILENAME" == true ]
do
    Input "[i] Set File name    : " 
    FILENAME=$UserInput
    
    if [ -z $FILENAME ];then
        echo "[i] Invalide File name"
        VALIDFILENAME=false
    else
        if [ -f Output/$FILENAME.$ext ]; then
            Input "[i] File already existe, Erase old file [Y/n]: " 
            ERASE=$UserInput
            case $ERASE in
                        Y|y)
                        rm -rf Output/$FILENAME.$ext
                        VALIDFILENAME=true 
                        ;;
                        *)
                        VALIDFILENAME=false
            esac
        else
            VALIDFILENAME=true
        fi
    fi
done
FILENAME=$FILENAME.$ext

