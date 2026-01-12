cask "forge" do
  desc "Run reusable steps from proprietary CI systems."
  homepage "https://github.com/frantjc/forge"
  version "v1.0.5"
  binary "forge"
  on_darwin do
    on_amd64 do
      url "https://github.com/frantjc/forge/releases/download/v1.0.5/forge-v1.0.5-darwin-amd64.tar.gz"
      sha256 "41af1a8c681a45d9aa73b90cb8282f69756d56dfcbd39cf41fccfb6fa1584f52"
    end
    on_arm64 do
      url "https://github.com/frantjc/forge/releases/download/v1.0.5/forge-v1.0.5-darwin-arm64.tar.gz"
      sha256 "9c22ea38e47086a5258b682aea352a4269d2123b1c2fd6e16afb29d9336b471e"
    end
  end
  on_linux do
    on_amd64 do
      url "https://github.com/frantjc/forge/releases/download/v1.0.5/forge-v1.0.5-linux-amd64.tar.gz"
      sha256 "91e5fa69f3fc740bf921a9d56a4b410f8d8896f8a4998915791b8414f5d70efe"
    end
    on_arm64 do
      url "https://github.com/frantjc/forge/releases/download/v1.0.5/forge-v1.0.5-linux-arm64.tar.gz"
      sha256 "44fdfb46833b66f57513fa0bbd39607517200464ae2dda98e4b49618935d3cba"
    end
  end

  postflight do
    if OS.mac?
      if system_command("/usr/bin/xattr", args: ["-h"]).exit_status == 0
        system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/forge"]
      end
    end
  end
end
