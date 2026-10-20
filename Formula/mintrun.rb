class Mintrun < Formula
  desc "Run CLIs for AI agents with short-lived, scoped credentials they never see"
  homepage "https://github.com/ninja-c9/mintrun"
  version "0.16.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ninja-c9/mintrun/releases/download/v0.16.0/mintrun_v0.16.0_darwin_arm64.tar.gz"
      sha256 "21f8831f189b23dfeeacc21cdaa4911d485e4b95268f5008636669ad8c82d175"
    end
    on_intel do
      url "https://github.com/ninja-c9/mintrun/releases/download/v0.16.0/mintrun_v0.16.0_darwin_amd64.tar.gz"
      sha256 "3f8bbbccac818b43cb05423102689d9c6cbc02b64148721d6085310a006ece9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ninja-c9/mintrun/releases/download/v0.16.0/mintrun_v0.16.0_linux_arm64.tar.gz"
      sha256 "a007e6078edf81a8b5d9ac873c12804cf2bc94a968dd21990f8b9c9375e42bd7"
    end
    on_intel do
      url "https://github.com/ninja-c9/mintrun/releases/download/v0.16.0/mintrun_v0.16.0_linux_amd64.tar.gz"
      sha256 "682e23c4573cde811f1968362147e748dee90e02ffb2f5dbcd928a550c71a538"
    end
  end

  def install
    bin.install "mintrun"
  end

  test do
    assert_match "mintrun v#{version} ", shell_output("#{bin}/mintrun version")
  end
end
