UNIX_RevPython=cmd/unix/reverse_python

PAYLOADVALID=false
until [ "$PAYLOADVALID" == true ]
do
    clear
    echo "[ Payloads ]"
    echo "[i] 1 - Unix Reverse Python"
    echo ""
    Input "[i] Select Payload: " 
    PAYLOAD=$UserInput
        case $PAYLOAD in
                    1)
                        PAYLOAD=$UNIX_RevPython
                        PAYLOADVALID=true
                    ;;
                    *)
                        PAYLOADVALID=false
        esac
done
ARCH="-"
