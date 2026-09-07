class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.36/term-llm_0.9.36_darwin_arm64.tar.gz"
      sha256 "f6196591961316f8f952a93fcc50fbbfcf0b2c1dadd47f9e46d7c3b2f31d9f64"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.36/term-llm_0.9.36_darwin_amd64.tar.gz"
      sha256 "12c323be696d1c68862af5551778815532b512bd3268417a2a5fbfd768599d9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.36/term-llm_0.9.36_linux_arm64.tar.gz"
      sha256 "02b64d649f3701822b910d4d023ea867feb08aadabd97336ef38e523e6628efa"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.36/term-llm_0.9.36_linux_amd64.tar.gz"
      sha256 "8685692c73bf52d84513cf6cefa45fbcef77e03806bfc32904b25645c5ae7f2b"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
