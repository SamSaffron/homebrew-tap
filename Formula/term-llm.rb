class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.40/term-llm_0.9.40_darwin_arm64.tar.gz"
      sha256 "53b9671a32443c8c5703d6e4c623c368970ec110391511c61a834f4a88a89206"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.40/term-llm_0.9.40_darwin_amd64.tar.gz"
      sha256 "701d8409daf61c1ae17893957bb7b7299b7659877f155af55c91a759adc3630f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.40/term-llm_0.9.40_linux_arm64.tar.gz"
      sha256 "1e7e34ab9bc7625e05629f23e9ecdfcb98fd329335118d07a50f873f2802e963"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.40/term-llm_0.9.40_linux_amd64.tar.gz"
      sha256 "316a7509a4d555303e8c7f287e1a6f0b2f508a98e15a83e0e7aae672710e6ef7"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
