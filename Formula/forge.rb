# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Forge < Formula
  desc "Easily run reusable steps from proprietary CI systems"
  homepage "https://github.com/frantjc/forge"
  version "0.13.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/frantjc/forge/releases/download/v0.13.3/forge_0.13.3_darwin_amd64.tar.gz"
      sha256 "c472c242e317b1f56a44802d7c061ca5584177f0eab0a26a0913a3d3d2bfecca"

      def install
        bin.install "forge"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/frantjc/forge/releases/download/v0.13.3/forge_0.13.3_darwin_arm64.tar.gz"
      sha256 "3e134ec61414b98df25ee727caa013d51e9edebc126191de7bab5ae940e47cb4"

      def install
        bin.install "forge"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/frantjc/forge/releases/download/v0.13.3/forge_0.13.3_linux_amd64.tar.gz"
      sha256 "b6440e1d8486411250ca5b063c8911371712682f1b02ad25acb2dfb648ef4569"

      def install
        bin.install "forge"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/frantjc/forge/releases/download/v0.13.3/forge_0.13.3_linux_arm64.tar.gz"
      sha256 "ceff884680492a6d9183d192ba65fb8ae9c63c59486189ef687731b9fead4031"

      def install
        bin.install "forge"
      end
    end
  end

  test do
    system "#{bin}/forge --version"
  end
end
