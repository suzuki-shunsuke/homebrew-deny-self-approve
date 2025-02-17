# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DenySelfApprove < Formula
  desc "Deny self-approved GitHub Pull Requests.
"
  homepage "https://github.com/suzuki-shunsuke/deny-self-approve"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/deny-self-approve/releases/download/v0.2.4/deny-self-approve_darwin_amd64.tar.gz"
      sha256 "ef29506c8c9fdb7a8132a9bb280ed66207eea55f21bceaff867a06972cfccdf4"

      def install
        bin.install "deny-self-approve"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/deny-self-approve/releases/download/v0.2.4/deny-self-approve_darwin_arm64.tar.gz"
      sha256 "cd8406beebb1f118f631d33ae54fbdb86f20528938cfafd03d071925f2f6da2b"

      def install
        bin.install "deny-self-approve"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/deny-self-approve/releases/download/v0.2.4/deny-self-approve_linux_amd64.tar.gz"
        sha256 "b5db07f2a33acf0eed4379b4b808d5e3c68e9ff8e1386630631737941e5acd06"

        def install
          bin.install "deny-self-approve"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/deny-self-approve/releases/download/v0.2.4/deny-self-approve_linux_arm64.tar.gz"
        sha256 "0d4a8a10b2953626b096d9695af380c91f6b41dcb6d2fbdf9ff490f369bf50b4"

        def install
          bin.install "deny-self-approve"
        end
      end
    end
  end

  test do
    system "#{bin}/deny-self-approve --version"
  end
end
