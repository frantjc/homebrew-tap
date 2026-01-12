cask "barge" do
  desc "Copy Helm Charts in between archives, releases, repositories, OCI registries, source code, and more."
  homepage "https://github.com/frantjc/barge"
  version "v0.1.2"
  binary "barge"

  livecheck do
    skip "Auto-generated on release."
  end
  on_linux do
    on_arm do
      url "https://github.com/frantjc/barge/releases/download/v0.1.2/barge-v0.1.2-linux-arm64.tar.gz"
      sha256 "32c114279a11a506aef76ebf0991b40d3aa96d5370627c363670135bac4d7dd3"
    end
    on_intel do
      url "https://github.com/frantjc/barge/releases/download/v0.1.2/barge-v0.1.2-linux-amd64.tar.gz"
      sha256 "e0085f81bf90290e6352e34ade4c24ce13fed5cc8b3d21dc1a8ca6f0052cf910"
    end
  end
  on_macos do
    on_arm do
      url "https://github.com/frantjc/barge/releases/download/v0.1.2/barge-v0.1.2-darwin-arm64.tar.gz"
      sha256 "dbab72680d7c21d5ae1e5e2a79f496e500aa45fe28f2d5e9a4d71d517edf0508"
    end
  end
  postflight do
    if OS.mac?
      if system_command("/usr/bin/xattr", args: ["-h"]).exit_status == 0
        system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/barge"]
      end
    end
  end
end
