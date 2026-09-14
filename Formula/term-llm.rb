class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.47/term-llm_0.9.47_darwin_arm64.tar.gz"
      sha256 "9ece55e5e5b2cd271b0736f959659ec96cc1e86d40c9929065b5ba043e1e2211"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.47/term-llm_0.9.47_darwin_amd64.tar.gz"
      sha256 "f520e0a4ec450b49fe8bfbcdc23eb99048a16c096f3e05c3e5cd05292fa41854"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.47/term-llm_0.9.47_linux_arm64.tar.gz"
      sha256 "99d54f4086ef45df4ba5dbcdc2512f9ec42501a77f30b801f18e1019651e47b2"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.47/term-llm_0.9.47_linux_amd64.tar.gz"
      sha256 "83b48b0123c86d01a17f25833fe069eda1eb4f80299d85a4271d71fba38173cd"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
