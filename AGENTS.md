# AGENTS.md

This file provides guidance to AI coding agents when working with code in this repository.

## Overview

This is a Homebrew third-party tap (`magalab/homebrew-tap`) distributing macOS GUI apps as Casks. Formulas are planned but not yet populated.

## Commands

```bash
# Audit a cask for correctness
brew audit --cask Casks/<name>.rb

# Install a cask locally for testing
brew install --cask Casks/<name>.rb

# Check livecheck (version detection) works
brew livecheck --cask Casks/<name>.rb

# Fetch and verify the SHA256 of a new release
curl -sL <release-dmg-url> | shasum -a 256
```

## Architecture

```
Casks/         # Homebrew cask definitions (macOS GUI apps)
  meow.rb      # arm64-only, GitHub releases, app bundle: Meow.app
  miao.rb      # arm64-only, GitHub releases, app bundle: Miao.app
  idev.rb      # Universal (arm64 + intel), GitHub releases, app bundle: idev.app
Formula/       # Homebrew formulae (CLI tools/libs) — currently empty
```

## Cask structure conventions

Each cask follows this pattern:
- **`version`** and **`sha256`** for the current release
- **`url`** pointing to a GitHub release DMG, using `#{version}` interpolation
- **`depends_on arch: :arm64`** for Apple Silicon-only apps; multi-arch casks use `on_arm`/`on_intel` blocks
- **`uninstall quit:`** with the bundle identifier (e.g. `tech.lury.meow`)
- **`zap trash:`** listing paths under `~/Library/Caches/`, `~/Library/Preferences/`, `~/Library/Saved Application State/`
- **`caveats`** explaining how to bypass macOS quarantine (`xattr -dr com.apple.quarantine`)
- **`livecheck`** block using regex on the GitHub releases page to detect new versions

## Releasing a new version

1. Update `version` to the new tag (e.g. `"0.0.18"`)
2. Download the new DMG from GitHub releases and compute its SHA256: `curl -sL <url> | shasum -a 256`
3. Replace `sha256` with the new hash
4. Run `brew audit --cask Casks/<name>.rb` to validate
5. Commit with message: `update: bump <name> version to <version> and update sha256`
