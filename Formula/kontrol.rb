# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kontrol < Formula
  desc "Package and deploy Kubernetes controllers"
  homepage "https://github.com/frantjc/kontrol"
  version "0.1.9"
  license "MIT"

  on_macos do
    url "https://github.com/frantjc/kontrol/releases/download/v0.1.9/kontrol_0.1.9_darwin_amd64.tar.gz"
    sha256 "91dbd6dd305fe1d9a7f702f504dc996fa73d3f8bd59436e3996b914408e4904d"

    def install
      bin.install "kontrol"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Kontrol
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/frantjc/kontrol/releases/download/v0.1.9/kontrol_0.1.9_linux_amd64.tar.gz"
      sha256 "9dbd60ef407f7c751e43ed959e2319a505ffe8a8022287371cd3770b8aabc1ae"

      def install
        bin.install "kontrol"
      end
    end
  end

  test do
    system "#{bin}/kontrol --version"
  end
end
