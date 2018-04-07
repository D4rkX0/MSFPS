UNIX_RevPerl=cmd/unix/reverse_perl

PAYLOADVALID=false
until [ "$PAYLOADVALID" == true ]
do
    clear
    echo "[ Payloads ]"
    echo "[i] 1 - Unix Reverse Perl"
    echo ""
    Input "[i] Select Payload: " 
    PAYLOAD=$UserInput
        case $PAYLOAD in
                    1)
                        PAYLOAD=$UNIX_RevPerl
                        PAYLOADVALID=true
                    ;;
                    *)
                        PAYLOADVALID=false
        esac
done
ARCH="-"
