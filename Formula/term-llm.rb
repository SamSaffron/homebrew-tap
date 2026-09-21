class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.52/term-llm_0.9.52_darwin_arm64.tar.gz"
      sha256 "1c52267ab0ba7cf2287cee92f8a8ca02108705ac23700885d8de99032a9df909"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.52/term-llm_0.9.52_darwin_amd64.tar.gz"
      sha256 "a9340daae6bab2cb0bdb5bf9ee75506eb2fb6caa8b483f19d5522dc7b15c50d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.52/term-llm_0.9.52_linux_arm64.tar.gz"
      sha256 "02b1204a7b7c088de822fdceac1c4df98b20d220705f11ad8bbe872fdf859122"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.52/term-llm_0.9.52_linux_amd64.tar.gz"
      sha256 "32ee9ca4817ed6c550fcd38f4b215848420bfea72a354b40e77495aa16b41e25"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
