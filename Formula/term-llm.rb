class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.23/term-llm_0.9.23_darwin_arm64.tar.gz"
      sha256 "5a1c43bd380d30684ccf7598c02b3c6e9b99b98402f6532571ab166bc3efcfaa"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.23/term-llm_0.9.23_darwin_amd64.tar.gz"
      sha256 "07b0394f340b96cfd05a8b2552508a5b37bfd2e75d485b8a8fa8e3624c0da663"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.23/term-llm_0.9.23_linux_arm64.tar.gz"
      sha256 "464eb6a84d43b6bc90c84280c260a3ae946dfd197ef14d28fd5c1a00033ec9a0"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.23/term-llm_0.9.23_linux_amd64.tar.gz"
      sha256 "f7db75ba97a0a4d079281127563d0412a7fa25ac6864a34046c576146bc284be"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
