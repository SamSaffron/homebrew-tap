class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.98/term-llm_0.9.98_darwin_arm64.tar.gz"
      sha256 "539edae87e86b3aad62a9f67ba915f83277c51785d75ad0c6439f2b4b8b760ec"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.98/term-llm_0.9.98_darwin_amd64.tar.gz"
      sha256 "e7772e992aa222099064c694bc78d184301ff23f813eb4c660f00f17008ae8bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.98/term-llm_0.9.98_linux_arm64.tar.gz"
      sha256 "73fd0eaab8edc7fbe15ed746b33673181c944191b7b7b0a79c0a99af280be005"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.98/term-llm_0.9.98_linux_amd64.tar.gz"
      sha256 "83e7a620b1bf1a6a17c363c22b90d9f98480f8ac20226c980e407ab3a1429dce"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
