# homebrew-voiden

Homebrew tap for [Voiden](https://voiden.md) on Linux.

## Install

```bash
brew tap voidenhq/voiden
brew trust voidenhq/voiden
brew install voidenhq/voiden/voiden
```

**Not** `brew install voiden` on its own — Voiden also has a real, separate
[macOS Cask](https://github.com/Homebrew/homebrew-cask/blob/main/Casks/v/voiden.rb)
with the same bare name, so an unqualified `brew install voiden` resolves
to that Cask instead of this tap's formula (confirmed on real Linux: Homebrew
prints `Treating voiden as a cask... This cask requires macOS.`). Use the
fully-qualified name above. `brew trust` is also required — a real Homebrew
security gate for any third-party tap, not specific to this one.

## Update

```bash
brew update
brew upgrade voiden
```

## About this tap

This tap is published and updated by `apps/electron/publish-brew.js` in the
main [VoidenHQ/voiden](https://github.com/VoidenHQ/voiden) repo, as part of
Voiden's release pipeline — see `apps/electron/HOMEBREW.md` there for the
full setup and release process. Do not hand-edit `Formula/voiden.rb`
directly; changes will be overwritten on the next release.
