# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghd2i < Formula
  desc "Create GitHub Issues from GitHub Discussions
"
  homepage "https://github.com/suzuki-shunsuke/ghd2i"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/suzuki-shunsuke/ghd2i/releases/download/v0.1.0/ghd2i_darwin_amd64.tar.gz"
      sha256 "193a8551ae50e65cbd8794f8affac12d05a67edc26b14bd216cf2c6bd1543427"

      def install
        bin.install "ghd2i"
        generate_completions_from_executable(bin/"ghd2i", "completion", shells: [:bash, :zsh, :fish])
      end
    end
    on_arm do
      url "https://github.com/suzuki-shunsuke/ghd2i/releases/download/v0.1.0/ghd2i_darwin_arm64.tar.gz"
      sha256 "085a5319a0846a7d95e4f404514571534c29b6d5837ab2dfb690038b3c10ab31"

      def install
        bin.install "ghd2i"
        generate_completions_from_executable(bin/"ghd2i", "completion", shells: [:bash, :zsh, :fish])
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/ghd2i/releases/download/v0.1.0/ghd2i_linux_amd64.tar.gz"
        sha256 "a276da0c3e95377c6e6b4e4af9418fe771058ee083513ccdbfc0b5899253a621"

        def install
          bin.install "ghd2i"
          generate_completions_from_executable(bin/"ghd2i", "completion", shells: [:bash, :zsh, :fish])
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/ghd2i/releases/download/v0.1.0/ghd2i_linux_arm64.tar.gz"
        sha256 "92f80a1a6bef5be6d17e013faba22610f599131c4927d98ea39fe6c7ec8f924f"

        def install
          bin.install "ghd2i"
          generate_completions_from_executable(bin/"ghd2i", "completion", shells: [:bash, :zsh, :fish])
        end
      end
    end
  end

  test do
    system "#{bin}/ghd2i --version"
  end
end
