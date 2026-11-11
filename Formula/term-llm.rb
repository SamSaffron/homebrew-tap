class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.101/term-llm_0.9.101_darwin_arm64.tar.gz"
      sha256 "ac0e32f73cfef64ae0b56a1e5bc362d8029a1f371df993bedeba097a0e7c8037"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.101/term-llm_0.9.101_darwin_amd64.tar.gz"
      sha256 "b497c196c33d4822dda3ae8b03d18e1f6805ef2d97750e679766c44548767be0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.101/term-llm_0.9.101_linux_arm64.tar.gz"
      sha256 "f221e6c3bab721980d5e984d332c60daa1f02e8f5a8838bf68736089e3a1a73a"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.101/term-llm_0.9.101_linux_amd64.tar.gz"
      sha256 "365e6c82cb3c7fd2f7f056ad6b3200595abfa59b22eb2d6c2e22e2a93f9c1780"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
