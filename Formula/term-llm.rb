class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.20/term-llm_0.9.20_darwin_arm64.tar.gz"
      sha256 "b5b08c0c3850f8c39a57d9216f5603e3187004d3ebab38152a9e1794880dfc5e"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.20/term-llm_0.9.20_darwin_amd64.tar.gz"
      sha256 "1ab24ae9d07f44e9efa887b94c4356ff489b8f6ec79058ebaa55b6ee2236aeb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.20/term-llm_0.9.20_linux_arm64.tar.gz"
      sha256 "15daf847c3e2ce61933e934ab042a0912f3fb39820cdcebb784d514c0476c7bb"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.20/term-llm_0.9.20_linux_amd64.tar.gz"
      sha256 "37c4222122591b00a7bd4806af3a4fd166b8df5c9c063de79d5ad9c21f9db08e"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
