class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.48/term-llm_0.9.48_darwin_arm64.tar.gz"
      sha256 "03b4c434817945fa9328f1a37f85091c00bbaecad9f1a1887dec87811ee90380"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.48/term-llm_0.9.48_darwin_amd64.tar.gz"
      sha256 "9ae944831136661df9bbd320a34e2b189935632c26c985ea9a88dac929295634"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.48/term-llm_0.9.48_linux_arm64.tar.gz"
      sha256 "37df596c427b36891f7943716894937925f128d8fb9d4a1bd06e2cb5490a8574"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.48/term-llm_0.9.48_linux_amd64.tar.gz"
      sha256 "da0e138a65e14864af66252b7282980da4597d3a9ffb1695a4104acb82186c52"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
