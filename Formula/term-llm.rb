class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.71/term-llm_0.9.71_darwin_arm64.tar.gz"
      sha256 "165e4475de4086ea29aa3e7da6597dbbf49f3ae349cdfc35be59d051c68feb3f"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.71/term-llm_0.9.71_darwin_amd64.tar.gz"
      sha256 "489b9412c2699cc16fe454152d3fbfbe7bc407ec8e3e48fa1d57f462729c0d94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.71/term-llm_0.9.71_linux_arm64.tar.gz"
      sha256 "fc918112848a163c55cb35eb74d339b2f34359e11d646c6e5ec0fd4d689a529e"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.71/term-llm_0.9.71_linux_amd64.tar.gz"
      sha256 "abcb212d29ebf802126818cf9c629f5485ff17e7e213169819476fa632b704fe"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
