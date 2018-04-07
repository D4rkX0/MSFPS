VALIDPORT=false
until [ "$VALIDPORT" == true ]
do
    Input "[i] Set LPORT [4444] : " 
    LPORT=$UserInput
    
    if [ -z $LPORT ];then
        LPORT=4444
    fi
    if [ $LPORT -gt 65535 ]; then
        echo "[i] Invalide IP Adress"
        VALIDPORT=false
    else
        VALIDPORT=true
    fi
done

