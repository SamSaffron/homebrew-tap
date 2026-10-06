class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.64/term-llm_0.9.64_darwin_arm64.tar.gz"
      sha256 "561ed1b8e75c372bfec857e4fc42e20368353eb7ab47cb7cba9bd94d856e55ee"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.64/term-llm_0.9.64_darwin_amd64.tar.gz"
      sha256 "edff727f8c53af62dd7a9850bb11a7ad255eb4cc5ac6b1da43211730e9194eda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.64/term-llm_0.9.64_linux_arm64.tar.gz"
      sha256 "8508a5a30c8636f1a12df83c906d51628ff205835dd7e36ae9b5e72b8a59b667"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.64/term-llm_0.9.64_linux_amd64.tar.gz"
      sha256 "8c83aaee423cca55b91fb2459ecd1003935d32d43c3216f6bb5ed0610da4bee8"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
