# Generated into seameet-ai/homebrew-tap (Casks/seameet.rb) by the SeaMeet release
# pipeline (build-and-release.yml -> update-homebrew-tap) on each signed+notarized
# macOS release; the version and DMG checksums are filled in from the built
# artifacts. Do not hand-edit. The #{version} tokens are Ruby interpolation and
# must stay literal (they are NOT placeholders the pipeline replaces).
cask "seameet" do
  version "3.4.0"

  on_arm do
    sha256 "89ea701bad662ac1ff51a436e24d3ef7d1f7a24e8ebe5ffcf6399d6083c821f4"
    url "https://github.com/seameet-ai/SeaMeet-Releases/releases/download/v#{version}/SeaMeet-macOS-Apple-Silicon-arm64-#{version}.dmg"
  end
  on_intel do
    sha256 "5c6bd201eddcadbbdeb0a7005cff4675d363400703488db02cbd725be6f47097"
    url "https://github.com/seameet-ai/SeaMeet-Releases/releases/download/v#{version}/SeaMeet-macOS-Intel-x64-#{version}.dmg"
  end

  name "SeaMeet Snap Recorder"
  desc "Record meetings and screen with a live transcript and AI summaries"
  homepage "https://seameet.ai/"

  # The app self-updates via electron-updater; don't let brew fight it.
  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SeaMeet Snap Recorder.app"

  zap trash: [
    "~/Library/Application Support/SeaMeet Snap Recorder",
    "~/Library/Preferences/SeasaltAI.SeaMeetRecorder.plist",
    "~/Library/Saved Application State/SeasaltAI.SeaMeetRecorder.savedState",
    "~/Library/Logs/SeaMeet Snap Recorder",
  ]
end
