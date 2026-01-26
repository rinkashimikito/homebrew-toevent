# Homebrew Tap for ToEvent

This is the official Homebrew tap for [ToEvent](https://github.com/Immedio/toevent), a menu bar app that shows your next calendar event with a countdown timer.

## Installation

```bash
brew tap rinkashimikito/toevent
brew install --cask toevent
```

## Updating

```bash
brew upgrade --cask toevent
```

## Uninstalling

```bash
brew uninstall --cask toevent
brew untap rinkashimikito/toevent
```

## Note on Unsigned App

ToEvent is currently distributed as an unsigned app. The cask includes a postflight script that automatically clears quarantine attributes. If you encounter any Gatekeeper issues, you can manually run:

```bash
xattr -cr /Applications/ToEvent.app
```

## Links

- [ToEvent Repository](https://github.com/Immedio/toevent)
- [Releases](https://github.com/Immedio/toevent/releases)
