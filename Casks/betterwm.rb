cask "betterwm" do
  version "0.34.1"
  sha256 "4bf87a6180c749f402d7e79660472545a6acc9f8e4bea7ea892fe8ca60e2f1fe"

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
