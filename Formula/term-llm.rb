class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.104/term-llm_0.9.104_darwin_arm64.tar.gz"
      sha256 "e7d63c75ed1ed502cc8ef211d2407595052c1b4e6fa39e4557993fba8d93ffe9"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.104/term-llm_0.9.104_darwin_amd64.tar.gz"
      sha256 "387f5d58a816be2c85d2f0868be599eeef83e2814f126b510d6b57e15d283957"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.104/term-llm_0.9.104_linux_arm64.tar.gz"
      sha256 "15a6749fee100da52607ac8b2d68ae018a77c37c32d6d4a33741780d6217cbc0"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.104/term-llm_0.9.104_linux_amd64.tar.gz"
      sha256 "8673f7eee5b4b270f0853984fb4d96e6387027e3e769f70b6a5498bcb927a802"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
