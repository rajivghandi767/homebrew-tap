# Homebrew Tap (`rajivghandi767/tap`) 🍺

Official [Homebrew](https://brew.sh) tap for macOS CLI utilities and systems automation tools built by [Rajiv Wallace](https://rajivwallace.com).

---

## 📦 Available Formulae

| Formula | Description | Repository |
| :--- | :--- | :--- |
| **`wireguard-autovpn-macos`** | Zero-polling, event-driven WireGuard split-tunnel automation for macOS (`x86_64` Intel & `arm64` Apple Silicon) with commercial VPN coexistence. | [`rajivghandi767/wireguard-autovpn-macos`](https://github.com/rajivghandi767/wireguard-autovpn-macos) |

---

## 🚀 Usage

### 1. Tap the Repository & Install
Install directly in a single command (Homebrew automatically taps `rajivghandi767/tap` and installs `bash` and `wireguard-tools` as dependencies):

```bash
brew install rajivghandi767/tap/wireguard-autovpn-macos
```

Or tap explicitly first:
```bash
brew tap rajivghandi767/tap
brew install wireguard-autovpn-macos
```

### 2. Activate the Root LaunchDaemon (`wireguard-autovpn-macos`)
Because `wg-quick` requires `root` privileges to manage `utun` kernel interfaces and routing tables, register the root-isolated `LaunchDaemon` after installing:

```bash
sudo wireguard-auto install-daemon
wireguard-auto status
```

### 3. Upgrading Formulae
When new versions or security patches are published, update via standard Homebrew commands and refresh the root daemon binary:

```bash
brew update
brew upgrade wireguard-autovpn-macos
sudo wireguard-auto install-daemon
```

---

## 📬 Let's Connect

**Rajiv Wallace**  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/rajiv-wallace)
[![Email](https://img.shields.io/badge/Email-EA4335?style=flat-square&logo=gmail&logoColor=white)](mailto:dev@rajivwallace.com)
[![Portfolio](https://img.shields.io/badge/Portfolio-000000?style=flat-square&logo=dev.to&logoColor=white)](https://rajivwallace.com)
