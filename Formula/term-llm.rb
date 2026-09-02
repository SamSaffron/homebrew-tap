class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.19/term-llm_0.9.19_darwin_arm64.tar.gz"
      sha256 "80c5a20e797fad96df54f6cf68aee89e971c702237ddabf71c9cb2ba2dcb242d"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.19/term-llm_0.9.19_darwin_amd64.tar.gz"
      sha256 "387f0864a15f9e155fb37a61f70f5d366e38113832cd045dff926906a0fec8f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.19/term-llm_0.9.19_linux_arm64.tar.gz"
      sha256 "85e9143c51d597d9a3b41de51f5e83bcf1bec2b6ac59b45dda84d4dfad10b45d"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.19/term-llm_0.9.19_linux_amd64.tar.gz"
      sha256 "8c854a004863e0bbd7b868be4bca04fc9ed5bf49431bf08572eadfbe23d5902b"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
