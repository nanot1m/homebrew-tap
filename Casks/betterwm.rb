cask "betterwm" do
  version "0.17.0"
  sha256 "931a660626626399e57be8ede42edfba33fa657f79c01c18b3b43efd8d0c30c9"

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
