# nanot1m/tap

Homebrew tap for [BetterWM](https://github.com/nanot1m/better-win-manager).

```sh
brew install --cask --no-quarantine nanot1m/tap/betterwm
```

`--no-quarantine` skips Gatekeeper's block on the ad-hoc signed app; without it, right-click BetterWM.app and choose Open once, or run `xattr -dr com.apple.quarantine /Applications/BetterWM.app`.

The cask is updated automatically by BetterWM's release workflow.
