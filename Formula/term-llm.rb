class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.41/term-llm_0.9.41_darwin_arm64.tar.gz"
      sha256 "a7c3ad9d25b972bb71329ad25a32abbe3586350333c5387a76ba39cbb3b659d5"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.41/term-llm_0.9.41_darwin_amd64.tar.gz"
      sha256 "3f00869cd8587f83c66d2d314270a1ed5c59fc7a6768cdfb69d457497e3a1dc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.41/term-llm_0.9.41_linux_arm64.tar.gz"
      sha256 "36ba04b91e4d556b37e55cb9d844ed8dd3a08a7555acbb93b34a4e81adf63ac9"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.41/term-llm_0.9.41_linux_amd64.tar.gz"
      sha256 "ce7e6a454fa3a04227f120e5aec9415b38d2083fa451481ce91634b5d4fce20d"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
