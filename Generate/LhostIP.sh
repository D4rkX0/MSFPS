VALIDIP=0
until [ "$VALIDIP" == 4 ]
do
    VALIDIP=0
    Input "[i] Set LHOST IP     : " 
    LHOST=$UserInput
    if expr "$LHOST" : '[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*$' >/dev/null; then
        for i in 1 2 3 4; do
            if [ $(echo "$LHOST" | cut -d. -f$i) -gt 255 ]; then
                VALIDIP=$(($VALIDIP-1))
            else
                VALIDIP=$(($VALIDIP+1))
            fi
        done
        if [ "$VALIDIP" != 4 ];then
                echo "[i] Invalide IP Adress"
        fi
    else
        echo "[i] Invalide IP Adress"
        VALIDIP=0
    fi
done


