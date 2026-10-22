class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.85/term-llm_0.9.85_darwin_arm64.tar.gz"
      sha256 "071c61c4f97df054db41a8bffb3cd8867546c917c14bdd6f91f5b5986019f062"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.85/term-llm_0.9.85_darwin_amd64.tar.gz"
      sha256 "ddb25b99b7ad024807257beb19c53d5ba604dcb556684b41f46070ee27792fc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.85/term-llm_0.9.85_linux_arm64.tar.gz"
      sha256 "6e68e76dd6a291476c7057f73b456d940357eb0068c94ad51bcd50dfa7561074"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.85/term-llm_0.9.85_linux_amd64.tar.gz"
      sha256 "2a443f8b1c195f672d035e9a8e5ed589f2e4e03bd54c4e5034aeed1f136519ce"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
