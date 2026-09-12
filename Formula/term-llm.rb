class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.44/term-llm_0.9.44_darwin_arm64.tar.gz"
      sha256 "e20e8bfdb1f9d51d9df09fd5037bf6a8b3b13d8cd01f6f72b14e9fad6c036e1d"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.44/term-llm_0.9.44_darwin_amd64.tar.gz"
      sha256 "58be024036e603ed9492b2429ca6428434dc6da0ed6b2d53b0a66f18c67be1b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.44/term-llm_0.9.44_linux_arm64.tar.gz"
      sha256 "d07646d46f9948b5a4ecfbbc03cff86f7c27a5ca86326b445a88c60b36081dec"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.44/term-llm_0.9.44_linux_amd64.tar.gz"
      sha256 "3fa7d939a9fe7a4b4efd7ca4e210c576fe86ae39307a56b442009adfb48c8c9f"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
