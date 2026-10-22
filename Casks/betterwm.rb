cask "betterwm" do
  version "0.17.4"
  sha256 "487e69bc8897132c757ee71f8f1b7b9c5fb86579aa19354eaab890d06d6c0419"

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
