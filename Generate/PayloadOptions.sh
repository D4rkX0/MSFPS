clear
case $PAYLOAD in 
                $WINx86_Rev_Tcpdns)
                    Input "[i] Set LHOST DNS : " 
                    LHOST=$UserInput
                    source Generate/Lport.sh
                    source Generate/FileName.sh
                    ;;
                *)
                    source Generate/LhostIP.sh
                    source Generate/Lport.sh
                    source Generate/FileName.sh
esac
clear
echo "[ Backdoor Info ]"
echo "[i] Platform   : $PLATFORM"
echo "[i] Arch       : $ARCH"
echo "[i] Payload    : $PAYLOAD"
echo "[i] LHOST      : $LHOST"
echo "[i] LPORT      : $LPORT"
echo "[i] FileName   : $FILENAME"
echo ""



