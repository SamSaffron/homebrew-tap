class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.62/term-llm_0.9.62_darwin_arm64.tar.gz"
      sha256 "22b492fac3260a0b4d7fb759d3cc771bd37d9d34f41422e0caf5ecc4ca9deae2"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.62/term-llm_0.9.62_darwin_amd64.tar.gz"
      sha256 "14b2aa289e557aaa5f5f613dcff71ffc22369fbd1d6b8810885b12d1c7ff4db8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.62/term-llm_0.9.62_linux_arm64.tar.gz"
      sha256 "3f2f1fc724517c685a815ca21b31ff6e1058b3d6dcb3a0232bd6bab6d4b744b0"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.62/term-llm_0.9.62_linux_amd64.tar.gz"
      sha256 "af7d0a2b9841bb49e063ba6b1ed44021319a7a10753595fa5cd8d8cc154a8ed9"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
