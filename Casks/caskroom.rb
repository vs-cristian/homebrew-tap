cask "caskroom" do
  version "0.2.3"
  sha256 "41e8053b2d634dfa7152b4b73e3e6da2196ba7d3f27f832896783a8f43c48f6e"

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
