cask "forge" do
  desc "Run reusable steps from proprietary CI systems."
  homepage "https://github.com/frantjc/forge"
  version "v1.0.5"
  binary "forge"

  livecheck do
    skip "Auto-generated on release."
  end
  on_linux do
    on_arm do
      url "https://github.com/frantjc/forge/releases/download/v1.0.5/forge-v1.0.5-linux-arm64.tar.gz"
      sha256 "fd47af9369f7bc0d17699e216ac831f893df533df00d8ffa93ab0e1475e08167"
    end
    on_intel do
      url "https://github.com/frantjc/forge/releases/download/v1.0.5/forge-v1.0.5-linux-amd64.tar.gz"
      sha256 "3d129267c01796b0464314f2444b6c86a15d3925650d4495a6bf528f281d3d22"
    end
  end
  on_macos do
    on_arm do
      url "https://github.com/frantjc/forge/releases/download/v1.0.5/forge-v1.0.5-darwin-arm64.tar.gz"
      sha256 "a51c62c7b29e2fe4bdf194f5741498d436d43d9298f44262a9167ae52f3e259b"
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
