# Homebrew Tap — Agent Context

> Official Homebrew tap for Crucible tools.

## Identity

- **Repo:** `crucibledx/homebrew-tap`
- **Tap:** `crucibledx/tap`
- **License:** MIT

## What It Does

Provides Homebrew formulae for installing Crucible tools on macOS and Linux. Currently contains only the `forge` formula.

## Install

```bash
brew install crucibledx/tap/forge
```

## Structure

```
Formula/
  forge.rb           ← Homebrew formula for Forge CLI
LICENSE
README.md
```

## Formula

`Formula/forge.rb` downloads prebuilt tarballs from forge-cli GitHub Releases for darwin and linux, arm64 and x64
(`on_macos` / `on_linux` with `Hardware::CPU.arm?`), installs the `forge` binary, and its `test` block asserts
`forge --version` matches the formula version.

## Automation

This repo is **auto-updated** by the `homebrew` job in the forge-cli release workflow (`crucibledx/forge-cli` `.github/workflows/release.yml`), which regenerates the whole formula. When a new Forge version is tagged, CI automatically:
1. Updates `Formula/forge.rb` with new version, URLs, and SHA256 checksums
2. Commits and pushes to this repo

**Manual edits are rare** — most changes come from the automated release pipeline.

## Adding a New Formula

If a new Crucible CLI ships (e.g., Ember), add a new `Formula/<name>.rb` following Homebrew's formula conventions.
