class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.81/term-llm_0.9.81_darwin_arm64.tar.gz"
      sha256 "e84687f80929edd0fa5cb2d5f562aaf4974cf2efc368192648f5aefdb90a4e47"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.81/term-llm_0.9.81_darwin_amd64.tar.gz"
      sha256 "95e0582f90e2b649bfcb6aa266003e6c25e0d51e47ee1213284c664156213ebf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.81/term-llm_0.9.81_linux_arm64.tar.gz"
      sha256 "49321760f4ff149869df9b8faeece30c24b15c188ad5ae9840fff201c31249ee"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.81/term-llm_0.9.81_linux_amd64.tar.gz"
      sha256 "c80577bb9444d0762573a705e754c52e43796642b80002c320c859312810f585"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
