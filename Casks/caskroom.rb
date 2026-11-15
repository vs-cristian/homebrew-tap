cask "caskroom" do
  version "0.4.0"
  sha256 "4d200ec33bc2b46b9c4e4f6df1d78575af1c319fe2a5bfba10e90040a1328741"

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
