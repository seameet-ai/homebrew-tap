# Generated into seameet-ai/homebrew-tap (Casks/seameet.rb) by the SeaMeet release
# pipeline (build-and-release.yml -> update-homebrew-tap) on each signed+notarized
# macOS release; the version and DMG checksums are filled in from the built
# artifacts. Do not hand-edit. The #{version} tokens are Ruby interpolation and
# must stay literal (they are NOT placeholders the pipeline replaces).
cask "seameet" do
  version "5.2.3"

  on_arm do
    sha256 "d582ca1d00ad201b85fc0c5d31b8ab1804b204be0e6b4cd049fd5bbceec12546"
    url "https://github.com/seameet-ai/SeaMeet-Releases/releases/download/v#{version}/SeaMeet-macOS-Apple-Silicon-arm64-#{version}.dmg"
  end
  on_intel do
    sha256 "885d2ae482f2b04d99944a5605a80fe6c450dd1206cc3d30c930540162d06dd7"
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
