cask "betterwm" do
  version "0.34.4"
  sha256 "30ea0f70d10bab4d0c98af3cd179c95917cd80388289f63001e1ee5c2d0154db"

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
