cask "barge" do
  desc "Copy Helm Charts in between archives, releases, repositories, OCI registries, source code, and more."
  homepage "https://github.com/frantjc/barge"
  version "v0.1.2"
  binary "barge"
  on_darwin do
    on_amd64 do
      url "https://github.com/frantjc/barge/releases/download/v0.1.2/barge-v0.1.2-darwin-amd64.tar.gz"
      sha256 "8dfe7fb8f7efbe982768abb13f49b54f2e67f83e5f4c9f453aa10641a1f01cb1"
    end
    on_arm64 do
      url "https://github.com/frantjc/barge/releases/download/v0.1.2/barge-v0.1.2-darwin-arm64.tar.gz"
      sha256 "e2b0b2d86f7f7fcd3206c4d3a1ebcc74de30f5c0f179258b20c52f531e90972f"
    end
  end
  on_linux do
    on_amd64 do
      url "https://github.com/frantjc/barge/releases/download/v0.1.2/barge-v0.1.2-linux-amd64.tar.gz"
      sha256 "6fdb9a9465acd88d5e860a28c040caa6b8407e7f4cbc2c569077a0c0dbcd1ea7"
    end
    on_arm64 do
      url "https://github.com/frantjc/barge/releases/download/v0.1.2/barge-v0.1.2-linux-arm64.tar.gz"
      sha256 "81f8ad2063792af0846ea132ef200fb7a841af1900f90617cca8a1b2e20ce243"
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
