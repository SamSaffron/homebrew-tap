class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.34/term-llm_0.9.34_darwin_arm64.tar.gz"
      sha256 "c03b654b6ffb66f362c58b42010544821f383a0212bd8720b62e317fd1685979"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.34/term-llm_0.9.34_darwin_amd64.tar.gz"
      sha256 "693446da167e8851ee9ac0c72f29e4fa4a0bf52448aefc4931d38835f30fecca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.34/term-llm_0.9.34_linux_arm64.tar.gz"
      sha256 "72718c16a1fc6ad95a667b298f2d3db29c4f4ab8c5b7ce4d66cd3f971da78bee"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.34/term-llm_0.9.34_linux_amd64.tar.gz"
      sha256 "efc7fedf144b735a61e25a581d4c53a30b31f159e4858e9278ef514280f6e1da"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
