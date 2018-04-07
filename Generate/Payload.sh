NextStep=false
until [ $NextStep == true ]
do
    echo "[i] Generate Payload [Y] "
    echo "[i] Back To Menu      [M] "
    echo "[i] Exit              [E] "
    echo ""
    Input "[i] Set Your Next Step   : " 
    NextStep=$UserInput

    case $NextStep in
                    Y|y)
                        clear
                        echo "[ Backdoor Info ]"
                        echo "[i] Platform   : $PLATFORM"
                        echo "[i] Arch       : $ARCH"
                        echo "[i] Payload    : $PAYLOAD"
                        echo "[i] LHOST      : $LHOST"
                        echo "[i] LPORT      : $LPORT"
                        echo "[i] FileName   : $FILENAME"
                        echo ""
                        echo "[i] This process will take 30 Seconds, Loading ..."
                        source Generate/GeneratePayload.sh
                        source Generate/Handler.sh
                        NextStep=true
                    ;;
                    M|m)
                        NextStep=true
                    ;;
                    E|e)
                        NextStep=true
                        MENU=false
                    ;;
    esac
done
