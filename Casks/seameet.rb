# Generated into seameet-ai/homebrew-tap (Casks/seameet.rb) by the SeaMeet release
# pipeline (build-and-release.yml -> update-homebrew-tap) on each signed+notarized
# macOS release; the version and DMG checksums are filled in from the built
# artifacts. Do not hand-edit. The #{version} tokens are Ruby interpolation and
# must stay literal (they are NOT placeholders the pipeline replaces).
cask "seameet" do
  version "3.4.1"

  on_arm do
    sha256 "84c7a0c1347cfa6e5a220e570a4455c33abf691fb73280a97f479262de4523d7"
    url "https://github.com/seameet-ai/SeaMeet-Releases/releases/download/v#{version}/SeaMeet-macOS-Apple-Silicon-arm64-#{version}.dmg"
  end
  on_intel do
    sha256 "4d433a3bee84adcf2ee806ee9a17a18ea69e26157e6ad3bd2af22bc334e2f0f0"
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
