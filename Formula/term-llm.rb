class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.46/term-llm_0.9.46_darwin_arm64.tar.gz"
      sha256 "0e3e3e779eb94ad69a9dc532f088edeb1b4d009b17a4c569a42fe62de12648c5"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.46/term-llm_0.9.46_darwin_amd64.tar.gz"
      sha256 "ad30c2d36c7d6e8a3aee2cedf88ef6191f945f8e06314b6224cf139dfd241b3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.46/term-llm_0.9.46_linux_arm64.tar.gz"
      sha256 "51fafcc8e35e625afe7adb1f95add43fb937831ab71296edc6873ec501addb47"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.46/term-llm_0.9.46_linux_amd64.tar.gz"
      sha256 "45e524cb2b6d19e14eea74f133557f6dd4bb0c7b4ff01c83e1cefed46546a967"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
