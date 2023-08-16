# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Forge < Formula
  desc "Easily run reusable steps from proprietary CI systems"
  homepage "https://github.com/frantjc/forge"
  version "0.11.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/frantjc/forge/releases/download/v0.11.2/forge_0.11.2_darwin_arm64.tar.gz"
      sha256 "f8cb269721bed1af1e7715efaf8de4de01f06c723c88fe159ed5fbd4e1c2726a"

      def install
        bin.install "forge"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/frantjc/forge/releases/download/v0.11.2/forge_0.11.2_darwin_amd64.tar.gz"
      sha256 "190f16383190eba775a6ec9b0283685e415d418984e85f451eb0947db500ce5a"

      def install
        bin.install "forge"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/frantjc/forge/releases/download/v0.11.2/forge_0.11.2_linux_arm64.tar.gz"
      sha256 "b33467bf3a1874c8625544f8162518ca97d54226c4424f7a7f779b1935ab68fa"

      def install
        bin.install "forge"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/frantjc/forge/releases/download/v0.11.2/forge_0.11.2_linux_amd64.tar.gz"
      sha256 "5112e4ece7f743476ab2b248d919318bc785c2213a96c5bd9a1f21efa17692bd"

      def install
        bin.install "forge"
      end
    end
  end

  test do
    system "#{bin}/forge --version"
  end
end
