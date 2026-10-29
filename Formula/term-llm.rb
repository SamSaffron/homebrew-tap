class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.89/term-llm_0.9.89_darwin_arm64.tar.gz"
      sha256 "3a5a2ca229f4adcc05ea9c57afd19b530f50387afc400555fcb06dd46f021add"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.89/term-llm_0.9.89_darwin_amd64.tar.gz"
      sha256 "9d44d9875561651e8382db69c0ee01a9168ea2a5773fb291cfd874930210f68f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.89/term-llm_0.9.89_linux_arm64.tar.gz"
      sha256 "9246d2c36eecd465b204d7cf21da5f40ab164721c1f4a33687c1cd132c6772ec"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.89/term-llm_0.9.89_linux_amd64.tar.gz"
      sha256 "5f2d2e69e64889150681570154937590cd726f82d47047174c76f806de867040"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
