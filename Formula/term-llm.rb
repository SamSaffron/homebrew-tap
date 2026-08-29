class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.5/term-llm_0.9.5_darwin_arm64.tar.gz"
      sha256 "7c9a0f17a2d6a98ebd98cbe94f51c812942d399aebe9b74f254b56b11075e319"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.5/term-llm_0.9.5_darwin_amd64.tar.gz"
      sha256 "eacf23a6d68a27708d5e4c29b46010623f5866022214029f6507c12ff77b1df7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.5/term-llm_0.9.5_linux_arm64.tar.gz"
      sha256 "1fe4975d5a8b5d3d7c551e6017114885ba27e04761d251ba6489740595153367"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.5/term-llm_0.9.5_linux_amd64.tar.gz"
      sha256 "8d982def2e7971cd185d5cf9f5063f67675a911b9a9c484c68de35716233d94c"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
