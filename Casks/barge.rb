cask "barge" do
  desc "Copy Helm Charts in between archives, releases, repositories, OCI registries, source code, and more.
"
  homepage "https://github.com/frantjc/barge"
  version "v0.1.2"
  binary "barge"
  on_darwin do
    on_amd64 do
      url "https://github.com/frantjc/barge/releases/download/v0.1.2/barge-v0.1.2-darwin-amd64.tar.gz"
      sha256 "sha256:6b6160b81b816173cc5e34d70aed21731ff0e56115032ce443693c0f3586d7c7"
    end
    on_arm64 do
      url "https://github.com/frantjc/barge/releases/download/v0.1.2/barge-v0.1.2-darwin-arm64.tar.gz"
      sha256 "sha256:e744174a5ef24949d15127b4fdf5171e4d6e8325c8a783213a019efb19dd4927"
    end
  end
  on_linux do
    on_amd64 do
      url "https://github.com/frantjc/barge/releases/download/v0.1.2/barge-v0.1.2-linux-amd64.tar.gz"
      sha256 "sha256:2d4b700c0f6d4d1f33fe1ab8108f0f0bdca1997093dfc9b7d7210e2ee5413a15"
    end
    on_arm64 do
      url "https://github.com/frantjc/barge/releases/download/v0.1.2/barge-v0.1.2-linux-arm64.tar.gz"
      sha256 "sha256:7ab370f9e8c9f1b0481e42c3a513e0ae10440a0fe5db3808b5761d463ae9f2cc"
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
