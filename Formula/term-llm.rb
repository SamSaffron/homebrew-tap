class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.7/term-llm_0.9.7_darwin_arm64.tar.gz"
      sha256 "15e36fe23c84217cc425af3a6c3a2a66c7b91d9e54a54d818185d097c96fe105"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.7/term-llm_0.9.7_darwin_amd64.tar.gz"
      sha256 "28ec08e0a7cf795e14a720a5fd52c4466ee323fc9a68370a932b06a22d993dd1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.7/term-llm_0.9.7_linux_arm64.tar.gz"
      sha256 "35bad40a86dd7f678fbdfa4270d9fc2786590fafb52cf7a88c38275cc0668bff"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.7/term-llm_0.9.7_linux_amd64.tar.gz"
      sha256 "9ed6d6e1157104e62d2906c2acc5881f091921f7a45b5b639fb2b9e9f5ae2039"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
