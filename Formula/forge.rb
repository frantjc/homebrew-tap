# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Forge < Formula
  desc "Easily run reusable steps from proprietary CI systems"
  homepage "https://github.com/frantjc/forge"
  version "0.7.5"
  license "MIT"

  on_macos do
    url "https://github.com/frantjc/forge/releases/download/v0.7.5/forge_0.7.5_darwin_amd64.tar.gz"
    sha256 "65da7c57bc9b2885e3b2f7f213d7944d443a59ce9421af8a956ceb49c7cce9bc"

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
      url "https://github.com/frantjc/forge/releases/download/v0.7.5/forge_0.7.5_linux_amd64.tar.gz"
      sha256 "1c052c5455cc368ebef74de1971c089adaadbe6ca624043e78dec577aefdb730"

      def install
        bin.install "forge"
      end
    end
  end

  test do
    system "#{bin}/forge --version"
  end
end
