cask "barge" do
  desc "Copy Helm Charts in between archives, releases, repositories, OCI registries, source code, and more."
  homepage "https://github.com/frantjc/barge"
  version "v0.1.2"
  binary "barge"
  on_darwin do
    on_amd64 do
      url "https://github.com/frantjc/barge/releases/download/v0.1.2/barge-v0.1.2-darwin-amd64.tar.gz"
      sha256 "19b83343f5c2243cb0180775ac351ae510d6ed989fd62ad7a09fea851c50b490"
    end
    on_arm64 do
      url "https://github.com/frantjc/barge/releases/download/v0.1.2/barge-v0.1.2-darwin-arm64.tar.gz"
      sha256 "4c269375744e906e5201c36977f322bddc8ab3ab88e5d5536749800a955dd803"
    end
  end
  on_linux do
    on_amd64 do
      url "https://github.com/frantjc/barge/releases/download/v0.1.2/barge-v0.1.2-linux-amd64.tar.gz"
      sha256 "2d97b946dd53f663dd87180f6a8f042770d37f2f87e8f0c7709955aac1c339e4"
    end
    on_arm64 do
      url "https://github.com/frantjc/barge/releases/download/v0.1.2/barge-v0.1.2-linux-arm64.tar.gz"
      sha256 "127d436725ebf7ceef036a53e78af92e587f9227637c423e548cb0c710da5d08"
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
