class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.105/term-llm_0.9.105_darwin_arm64.tar.gz"
      sha256 "0b1b7bc28cb48f56bd9c5bbd4f13b659318822f5747e920a1906cb8b71aea2eb"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.105/term-llm_0.9.105_darwin_amd64.tar.gz"
      sha256 "cc1c1752922534af9f9f916b344ba7627b1eadb2eece82ce67a188f3db33a704"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.105/term-llm_0.9.105_linux_arm64.tar.gz"
      sha256 "90f3ad2e4e8eb1339862b0f5879e79319fd04f5d93ac88974d6323277c0104d3"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.105/term-llm_0.9.105_linux_amd64.tar.gz"
      sha256 "83eab68091bc2b5959d37453f0d52c67e650d647bcfe0520d7147b41d1454e6c"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
