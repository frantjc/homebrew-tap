# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Forge < Formula
  desc "Easily run reusable steps from proprietary CI systems"
  homepage "https://github.com/frantjc/forge"
  version "0.5.0"
  license "MIT"

  on_macos do
    url "https://github.com/frantjc/forge/releases/download/v0.5.0/forge_0.5.0_darwin_amd64.tar.gz"
    sha256 "86d92f755ee30c0fc0ff7bea3d4a5dcd8178ae9ded02297d8248d2d2843a5ce3"

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
      url "https://github.com/frantjc/forge/releases/download/v0.5.0/forge_0.5.0_linux_amd64.tar.gz"
      sha256 "ff49c2e494df7df5d72bd6dfaa119dfec7e5dda41417495b6e4a105118314974"

      def install
        bin.install "forge"
      end
    end
  end

  test do
    system "#{bin}/forge --version"
  end
end
