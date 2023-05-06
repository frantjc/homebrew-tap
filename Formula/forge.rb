# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Forge < Formula
  desc "Easily run reusable steps from proprietary CI systems"
  homepage "https://github.com/frantjc/forge"
  version "0.7.3"
  license "MIT"

  on_macos do
    url "https://github.com/frantjc/forge/releases/download/v0.7.3/forge_0.7.3_darwin_amd64.tar.gz"
    sha256 "4bbcb6419840b57a32064e9ab5ecdb1e0fa4d98829b43bd5e8e48f2c38341a70"

    def install
      bin.install "forge"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Forge
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/frantjc/forge/releases/download/v0.7.3/forge_0.7.3_linux_amd64.tar.gz"
      sha256 "886eb45c2ecf731f3b47e0140008a32052320c98dc8a75e19b6b65265959b2d0"

      def install
        bin.install "forge"
      end
    end
  end

  test do
    system "#{bin}/forge --version"
  end
end
