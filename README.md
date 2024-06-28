# Killwifii ☣️

Welcome to **Killwifi**, the ultimate Wi-Fi deauth script that's as savage as it sounds. Whether you're a network security pro or just curious about Wi-Fi networks, this tool has got you covered.

## ✨ Features

- **👀 Scan for Wi-Fi networks:** Find all the Wi-Fi networks around you, easy peasy.
- **🔍 Select a Wi-Fi network:** Pick a network to mess with.
- **⚔️ Deauthenticate a client:** Kick a specific device off a Wi-Fi network.
- **🔥 Deauthenticate all clients:** Disconnect everyone from a Wi-Fi network. Total chaos.
- **🖥️ Check Wi-Fi Adapter Status:** See what's up with your Wi-Fi adapter.
- **🛠️ Change Wi-Fi Adapter Interface Name:** Give your Wi-Fi adapter a new name.
- **📜 User-friendly Menu:** Navigate through a simple, no-nonsense menu.

## 🔧 Requirements

- A Linux-based system
- `aircrack-ng` suite installed
- Root privileges

## 📥 Installation

1. **Clone the repo:**
    ```bash
    git clone https://github.com/0xKaushik/killwifi.git
    cd killwifi
    ```

2. **Make the script executable:**
    ```bash
    chmod +x killwifi.sh
    ```

3. **Run it with root privileges:**
    ```bash
    sudo ./killwifi.sh
    ```

## 🎮 Usage

When you run the script, you’ll see a menu like this:

```
------------------------------------
Wi-Fi Deauthentication Tool
1. Scan for Wi-Fi networks
2. Select a Wi-Fi network for further actions
3. Deauthenticate a client from a Wi-Fi network
4. Deauthenticate all clients from a Wi-Fi network
5. Check Wi-Fi Adapter Status
6. Change Wi-Fi Adapter Interface Name
7. Exit

Enter your choice:
```

Just enter the number for what you want to do and follow the prompts. It’s that simple.

### 🌟 Example Workflow

1. **Scan for Wi-Fi networks:**
    Choose option `1` to see nearby Wi-Fi networks.

2. **Select a Wi-Fi network:**
    Pick option `2`, then enter the BSSID and channel of your target network.

3. **Deauthenticate a client:**
    Go for option `3`, enter the number of deauth packets, the BSSID, and the client MAC address.

4. **Deauthenticate all clients:**
    Hit option `4`, enter the number of deauth packets, and the BSSID.

5. **Check Wi-Fi Adapter Status:**
    Select option `5` to check your Wi-Fi adapter’s status.

6. **Change Wi-Fi Adapter Interface Name:**
    Use option `6` to rename your Wi-Fi adapter.

## ⚠️ Disclaimer

This tool is for educational purposes only. Unauthorized deauthentication attacks are illegal and unethical. Use this responsibly and only on networks you own or have permission to test. Don’t be that person.

## 📜 License

This project is licensed under the MIT License. Check out the [LICENSE](LICENSE) file for the deets.

## 🤝 Contributing

Want to make Killwifi even more lit? Contributions are welcome! Open an issue or submit a pull request.

## 🙌 Acknowledgements

Shoutout to [aircrack-ng](https://www.aircrack-ng.org/) for the dope tools for Wi-Fi security.

---

Feel free to tweak it further to match your style!
