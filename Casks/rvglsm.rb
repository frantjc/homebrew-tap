cask "rvglsm" do
  desc "Tools for tracking scores in RVGL sessions."
  homepage "https://github.com/frantjc/rvgl-utils"
  version "v0.6.1"
  binary "rvglsm"

  livecheck do
    skip "Auto-generated on release."
  end
  on_linux do
    on_arm do
      url "https://github.com/frantjc/rvgl-utils/releases/download/v0.6.1/rvglsm-v0.6.1-linux-arm64.tar.gz"
      sha256 "8cee50c9eaa1761dd05635a88b1741c599e3a673b44aa585cd6a65d7eb9f9ff2"
    end
    on_intel do
      url "https://github.com/frantjc/rvgl-utils/releases/download/v0.6.1/rvglsm-v0.6.1-linux-amd64.tar.gz"
      sha256 "cc182a8e3610ca12d0d84076b68df60ad6ddc2180f10cccb3a3b807c7ba40c83"
    end
  end
  on_macos do
    on_arm do
      url "https://github.com/frantjc/rvgl-utils/releases/download/v0.6.1/rvglsm-v0.6.1-darwin-arm64.tar.gz"
      sha256 "a856280b4bfec778cdfa4786e35c28d0900c994f186727f274c105fc8255a3bc"
    end
  end
  postflight do
    if OS.mac?
      if system_command("/usr/bin/xattr", args: ["-h"]).exit_status == 0
        system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/rvglsm"]
      end
    end
  end
end
