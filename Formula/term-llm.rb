class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.2/term-llm_0.9.2_darwin_arm64.tar.gz"
      sha256 "130453c188aa57f51b254d7284a1b3582dfa65e8c1787188d14e2cffe0033eb6"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.2/term-llm_0.9.2_darwin_amd64.tar.gz"
      sha256 "db2ab418d3ce8495b1eb795b66bd25a56d6d04c233bf61fe8d70eadb18091ad0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.2/term-llm_0.9.2_linux_arm64.tar.gz"
      sha256 "5bb6b5b680fa2e346099fcbca0f960c375907db08cfe6624e2d0420b76f717e3"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.2/term-llm_0.9.2_linux_amd64.tar.gz"
      sha256 "f1c0d289dbef56b0e7f31c6fb9dfcbf29701f6c03306f3147327e3d32b434cd2"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
