class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.32/term-llm_0.9.32_darwin_arm64.tar.gz"
      sha256 "d2fcbbeb7413383c970fdb02910a02b55c19b19dfd7a9e41e5fa581839e7d828"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.32/term-llm_0.9.32_darwin_amd64.tar.gz"
      sha256 "7b34f2f6f490c46850b2ee8bd0a1fcf692534c18dd16c48f3ebce4c764fde3ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.32/term-llm_0.9.32_linux_arm64.tar.gz"
      sha256 "54a4bc6e78f5ffb98cfed0e5688e2889a50beff2a900b6d0c0a372c485a69b33"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.32/term-llm_0.9.32_linux_amd64.tar.gz"
      sha256 "0c0c368d8b7d71db28eb4d7db9e724efe0973d3534d9eb0bbfc00a0781736cea"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
