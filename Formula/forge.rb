# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Forge < Formula
  desc "Easily run reusable steps from proprietary CI systems"
  homepage "https://github.com/frantjc/forge"
  version "0.7.2"
  license "MIT"

  on_macos do
    url "https://github.com/frantjc/forge/releases/download/v0.7.2/forge_0.7.2_darwin_amd64.tar.gz"
    sha256 "73d85871c11ad8408e1c4f30604d83eb16a89805db0401f1219ee0a484c131b1"

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
      url "https://github.com/frantjc/forge/releases/download/v0.7.2/forge_0.7.2_linux_amd64.tar.gz"
      sha256 "270261bf18270b62a712e08fdf569b47ef0aa7558ced71fcd7d8adc9cc5699d3"

      def install
        bin.install "forge"
      end
    end
  end

  test do
    system "#{bin}/forge --version"
  end
end
