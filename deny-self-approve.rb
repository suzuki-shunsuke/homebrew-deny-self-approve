# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DenySelfApprove < Formula
  desc "Deny self-approved GitHub Pull Requests.
"
  homepage "https://github.com/suzuki-shunsuke/deny-self-approve"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/deny-self-approve/releases/download/v0.3.1/deny-self-approve_darwin_amd64.tar.gz"
      sha256 "3d868f7a2880405d294677c37c5fd92689d74ca3fd4afdbcdb495853f1456b16"

      def install
        bin.install "deny-self-approve"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/deny-self-approve/releases/download/v0.3.1/deny-self-approve_darwin_arm64.tar.gz"
      sha256 "e85cdc46fc13bdb1352609d6e7711fc6ccbb1924dc12dffc69da74d2153c46b5"

      def install
        bin.install "deny-self-approve"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/deny-self-approve/releases/download/v0.3.1/deny-self-approve_linux_amd64.tar.gz"
        sha256 "af759d1f78fedae7ab6102b54fe44f7c63da10c7a7a2c0cbd856b96f0efc98ad"

        def install
          bin.install "deny-self-approve"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/deny-self-approve/releases/download/v0.3.1/deny-self-approve_linux_arm64.tar.gz"
        sha256 "d45b411488624a994a030dccd63773caf6617669696ea95fb3efd835349956ec"

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
