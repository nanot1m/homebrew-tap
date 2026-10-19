# nanot1m/tap

Homebrew tap for [BetterWM](https://github.com/nanot1m/better-win-manager).

```sh
brew install --cask nanot1m/tap/betterwm
xattr -dr com.apple.quarantine /Applications/BetterWM.app
```

The app is ad-hoc signed, so Gatekeeper blocks the first launch until the quarantine flag is cleared (or right-click BetterWM.app and choose Open once).

The cask is updated automatically by BetterWM's release workflow.
