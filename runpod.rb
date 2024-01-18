# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runpod < Formula
  desc ""
  homepage "https://github.com/rachfop/runpod"
  version "0.4"

  on_macos do
    url "https://github.com/rachfop/runpodctl/releases/download/v0.4/runpodctl_0.4_darwin_all.tar.gz"
    sha256 "f7b2ad81ead5a5bcb2621ae51b7c8637b17d6fb197ec18a106694396b8c29f36"

    def install
      bin.install "runpodctl"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rachfop/runpodctl/releases/download/v0.4/runpodctl_0.4_linux_arm64.tar.gz"
      sha256 "e6514c51a5c9a86c5baef8301194df8ce061b7bd678cf4432c0cefa616b6eef9"

      def install
        bin.install "runpod"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rachfop/runpodctl/releases/download/v0.4/runpodctl_0.4_linux_amd64.tar.gz"
      sha256 "9a0ab3ea47da1cc4b6143511db7a08dea07d7d3941dd2cadd93a9040af0287fe"

      def install
        bin.install "runpod"
      end
    end
  end
end
