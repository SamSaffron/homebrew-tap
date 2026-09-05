class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.28/term-llm_0.9.28_darwin_arm64.tar.gz"
      sha256 "187a21f5ff4203f83eb3ad59abc1dce2b271f2631f7427fe2e82d257f514f798"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.28/term-llm_0.9.28_darwin_amd64.tar.gz"
      sha256 "0089f518f3988386485c77c6b8e2c0b30c05bd04293fe6f89704ec412685d68b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.28/term-llm_0.9.28_linux_arm64.tar.gz"
      sha256 "74664d1cc2d493de71e22ddf418e749c85a2495f84e5112b4d5cf18674e27178"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.28/term-llm_0.9.28_linux_amd64.tar.gz"
      sha256 "617ec162e998099aac46e5451161d345d5cc08e4ec82c17b24bec0c8d3b775de"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
