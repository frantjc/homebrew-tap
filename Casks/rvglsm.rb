cask "rvglsm" do
  desc "Tools for tracking scores in RVGL sessions."
  homepage "https://github.com/frantjc/rvgl-utils"
  version "v0.6.1"
  binary "rvglsm"
  on_darwin do
    on_amd64 do
      url "https://github.com/frantjc/rvgl-utils/releases/download/v0.6.1/rvglsm-v0.6.1-darwin-amd64.tar.gz"
      sha256 "189a3ac42cd1aff904646c9ebfc176e1e1c59bd79c5e7698d39316dec646e3b8"
    end
    on_arm64 do
      url "https://github.com/frantjc/rvgl-utils/releases/download/v0.6.1/rvglsm-v0.6.1-darwin-arm64.tar.gz"
      sha256 "9aa3315b2bc3a317b3d850ae7ded1b0958d6003048279cbf5ae6eceefb1630ad"
    end
  end
  on_linux do
    on_amd64 do
      url "https://github.com/frantjc/rvgl-utils/releases/download/v0.6.1/rvglsm-v0.6.1-linux-amd64.tar.gz"
      sha256 "0c07c553154b584e4005602091d2a15b78f3805f6c43a5296416921c132fe557"
    end
    on_arm64 do
      url "https://github.com/frantjc/rvgl-utils/releases/download/v0.6.1/rvglsm-v0.6.1-linux-arm64.tar.gz"
      sha256 "826a909b5da6146bb040bfa57243e5f3e4514eef2dd1e1ed6da5758fdb27ca1e"
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
