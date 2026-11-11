class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.100/term-llm_0.9.100_darwin_arm64.tar.gz"
      sha256 "c38a95340c9fd4a1481523c78bd762130a55005513ee2173a461b440f6f4cfff"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.100/term-llm_0.9.100_darwin_amd64.tar.gz"
      sha256 "4ef8781d4f9af8c50e2809f1e1f170ae1ae760a460f2492df0e7ba484a0fd2f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.100/term-llm_0.9.100_linux_arm64.tar.gz"
      sha256 "479aafda26bc5a660a1de6cf25a71642160a8689593641ce068676a70f7999e3"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.100/term-llm_0.9.100_linux_amd64.tar.gz"
      sha256 "570516997c9c92ea2861bc3f4945b39ae9744a9d79725a326dfc014b84e3ffcb"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
