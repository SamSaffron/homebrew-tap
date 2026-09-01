class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.15/term-llm_0.9.15_darwin_arm64.tar.gz"
      sha256 "7c7f6c64cc19a55fa1e04acdd5b1d86f013a18e3c66e2c4bf744205de3d05f14"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.15/term-llm_0.9.15_darwin_amd64.tar.gz"
      sha256 "6841dbca1411c3ac2e4924b82dda9be2facc91da91df2b1a820cb4caf81e0f43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.15/term-llm_0.9.15_linux_arm64.tar.gz"
      sha256 "26d13285ef87811fbe55cebc107e67ba2dc272bc44df05080a540676179ec7d8"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.15/term-llm_0.9.15_linux_amd64.tar.gz"
      sha256 "7a223229559179b4e030f4bd1340f2ca4edb08bd6f93db29e50ff79b95624281"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
