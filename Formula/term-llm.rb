class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.25/term-llm_0.9.25_darwin_arm64.tar.gz"
      sha256 "8f6f4ea4ef5b1c9771d80370015b95f1d54cccf875aae0ba44721eb70a05344e"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.25/term-llm_0.9.25_darwin_amd64.tar.gz"
      sha256 "6cad0e0f5971478328bffc1909be56bfc42747d46ad8d90ec920218d8c05cb58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.25/term-llm_0.9.25_linux_arm64.tar.gz"
      sha256 "7bc68d83757d9c91d402ec3923080738e5277dd97a4e8a849af752f465135c98"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.25/term-llm_0.9.25_linux_amd64.tar.gz"
      sha256 "344e0ef9de3f974ceff78d1f39a6246e56dafbecd5d4303d754630d7dc7b654d"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
