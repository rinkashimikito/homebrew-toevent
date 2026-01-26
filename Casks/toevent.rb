cask "toevent" do
  version "0.9.0"
  sha256 :no_check

  url "https://github.com/Immedio/toevent/releases/download/v#{version}/ToEvent-#{version}.dmg"
  name "ToEvent"
  desc "Menu bar app showing next calendar event with countdown"
  homepage "https://github.com/Immedio/toevent"

  depends_on macos: ">= :ventura"

  app "ToEvent.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/ToEvent.app"],
                   sudo: false
  end

  caveats <<~EOS
    ToEvent is currently unsigned. The postflight script automatically
    clears quarantine attributes to allow the app to run.

    If you encounter Gatekeeper warnings, you can manually run:
      xattr -cr /Applications/ToEvent.app

    Or right-click the app and select "Open" to bypass Gatekeeper.
  EOS

  zap trash: [
    "~/Library/Preferences/com.immedio.ToEvent.plist",
    "~/Library/Application Support/ToEvent",
    "~/Library/Caches/com.immedio.ToEvent",
  ]
end
