# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kontrol < Formula
  desc "Package and deploy Kubernetes controllers"
  homepage "https://github.com/frantjc/kontrol"
  version "0.1.6"
  license "MIT"

  on_macos do
    url "https://github.com/frantjc/kontrol/releases/download/v0.1.6/kontrol_0.1.6_darwin_amd64.tar.gz"
    sha256 "fc839079e58a593d4fc4bb2c59dfa61afe02f467144f251b61d65e3e0af6e76d"

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
      url "https://github.com/frantjc/kontrol/releases/download/v0.1.6/kontrol_0.1.6_linux_amd64.tar.gz"
      sha256 "ba246792ab87045deebb9ca4027da8e588b7c9e1b1ea6bfedc609e8962e361fe"

      def install
        bin.install "kontrol"
      end
    end
  end

  test do
    system "#{bin}/kontrol --version"
  end
end