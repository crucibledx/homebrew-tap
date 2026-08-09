# Homebrew Tap — Crucible

Official [Homebrew](https://brew.sh) tap for [Crucible](https://crucibledx.dev) tools.

## Install

```bash
brew install crucibledx/tap/forge
```

## Available Formulae

| Formula | Description                                          |
|---------|------------------------------------------------------|
| `forge` | One source of truth for every AI tool your team uses |

## Usage

```bash
brew tap crucibledx/tap
brew install forge
brew upgrade forge
```

## How it works

When a new Forge CLI version is released, the [release workflow](https://github.com/crucibledx/forge-cli/blob/main/.github/workflows/release.yml) automatically updates the formula in this repo with the correct version, URLs, and SHA256 checksums.

## License

[MIT](LICENSE)
