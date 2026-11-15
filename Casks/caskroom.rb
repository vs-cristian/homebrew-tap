cask "caskroom" do
  version "0.2.1"
  sha256 "0a3349999c45f93f5178c2e807b00719a1da80c3b8267e4b96faf621a3ac12a8"

  url "https://github.com/vs-cristian/caskroom/releases/download/v#{version}/Caskroom-#{version}.zip"
  name "Caskroom"
  desc "GUI for Homebrew"
  homepage "https://github.com/vs-cristian/caskroom"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Caskroom.app"

  zap trash: [
    "~/Library/Application Support/io.github.vs-cristian.caskroom",
    "~/Library/Caches/io.github.vs-cristian.caskroom",
    "~/Library/HTTPStorages/io.github.vs-cristian.caskroom",
    "~/Library/Preferences/io.github.vs-cristian.caskroom.plist",
  ]
end
