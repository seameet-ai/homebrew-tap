# SeaMeet Homebrew Tap

A [Homebrew](https://brew.sh) tap for the **[SeaMeet](https://seameet.ai/)** desktop
app — record meetings and your screen with a live transcript and AI summaries.

## Install

```bash
brew install --cask seameet-ai/tap/seameet
```

That's it — `brew` adds the tap and installs the app in one step. To update later:

```bash
brew upgrade --cask seameet
```

(The app also updates itself in the background, so `brew upgrade` is optional.)

## What you get

- **SeaMeet Snap Recorder** — the cross-platform desktop app (macOS Apple Silicon + Intel).
- Prefer a direct download or on Windows? Grab an installer from
  **[seameet.ai/download](https://seameet.ai/download/)**.

## Use it from your AI agent

SeaMeet has a Model Context Protocol server, **[`@seameet/mcp`](https://github.com/seameet-ai/seameet-mcp)**,
so agents like Claude Code, Codex, and Cursor can start recordings, read transcripts,
and search your library. When the desktop app is running, the MCP exposes the full
recorder toolset. See the [seameet-mcp README](https://github.com/seameet-ai/seameet-mcp#readme)
for one-line install into any agent.

## About this tap

The `Casks/seameet.rb` cask is generated automatically by the SeaMeet release
pipeline on every stable release (version + notarized-DMG checksums), so it always
points at the latest signed build.

- Homepage: <https://seameet.ai/>
- Download: <https://seameet.ai/download/>
- MCP server: <https://github.com/seameet-ai/seameet-mcp>
