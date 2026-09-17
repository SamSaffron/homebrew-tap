class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.50/term-llm_0.9.50_darwin_arm64.tar.gz"
      sha256 "3e492c01f0a9845b1b3f842b633e4f4916b2b6933fab779acbfb652bc5e2cc38"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.50/term-llm_0.9.50_darwin_amd64.tar.gz"
      sha256 "ef8e3a472159dcc60dd5a7c708ab4a9277afa23c07eb002762516ac3b5cadca4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.50/term-llm_0.9.50_linux_arm64.tar.gz"
      sha256 "c5c2b0a858675ec191e04b98a564a021c92741da085cc12f1311b1d314241308"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.50/term-llm_0.9.50_linux_amd64.tar.gz"
      sha256 "f6117f8ce0cb0bef23574133b727ebe8edeb4c812352c0d298df4df094898d32"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
