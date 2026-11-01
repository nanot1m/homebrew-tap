cask "betterwm" do
  version "0.30.1"
  sha256 "ae3534a18a29b78dac03cea90e9e040bde80c20bf3e0eea97be8bc55a7e5c856"

  url "https://github.com/nanot1m/better-win-manager/releases/download/v#{version}/BetterWM-#{version}.zip"
  name "BetterWM"
  desc "Column-based tiling window manager with virtual workspaces and a status bar"
  homepage "https://github.com/nanot1m/better-win-manager"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "BetterWM.app"

  caveats <<~EOS
    BetterWM is ad-hoc signed, not notarized. If macOS refuses to open it, clear the quarantine flag:
      xattr -dr com.apple.quarantine "#{appdir}/BetterWM.app"
    Grant Accessibility access on first launch (System Settings > Privacy & Security > Accessibility).
  EOS

  zap trash: [
    "~/.config/betterwm",
  ]
end
