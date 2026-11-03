class WireguardAutovpnMacos < Formula
  desc "Zero-polling, event-driven WireGuard split-tunnel automation for macOS"
  homepage "https://github.com/rajivghandi767/wireguard-autovpn-macos"
  url "https://github.com/rajivghandi767/wireguard-autovpn-macos/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "50908ba1339c797f106cfc0f8a74afeaee5d7552311032fa279634b9115bacc3"
  license "MIT"
  head "https://github.com/rajivghandi767/wireguard-autovpn-macos.git", branch: "main"

  depends_on "bash"
  depends_on :macos
  depends_on "wireguard-tools"

  def install
    bin.install "bin/wireguard-auto"
    (etc/"wireguard").mkpath
    etc.install "config/autovpn.conf.example" => "wireguard/autovpn.conf"
  end

  def caveats
    <<~EOS
      1. Edit your trusted home Wi-Fi SSIDs and/or Gateway MACs in:
           #{etc}/wireguard/autovpn.conf

      2. Install and start the root-protected LaunchDaemon:
           sudo #{opt_bin}/wireguard-auto install-daemon

      3. Verify your network status and Gateway MAC:
           wireguard-auto status
    EOS
  end

  test do
    assert_match "wireguard-auto v#{version}", shell_output("#{bin}/wireguard-auto --version")
    assert_match "Usage: wireguard-auto", shell_output("#{bin}/wireguard-auto --help")
  end
end
