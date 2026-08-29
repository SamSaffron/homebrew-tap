class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.1/term-llm_0.9.1_darwin_arm64.tar.gz"
      sha256 "4d4a88df9098657224ae65b8269a1f34b62b885ae09460c193eabe539cc90e66"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.1/term-llm_0.9.1_darwin_amd64.tar.gz"
      sha256 "e014bf4c1e3fe3e519b0e01ebe19a5ec945492b9bb16a65b94b1bc6251744442"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.1/term-llm_0.9.1_linux_arm64.tar.gz"
      sha256 "05418bfc9be1eb53ae88691933a1b8e27f54e05dfe243c432b1ad41a18d49e8f"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.1/term-llm_0.9.1_linux_amd64.tar.gz"
      sha256 "7af826171e038a5cbb8ec951e646a905647d3275b909414f8540ce8ac103fcdd"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
