class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.14/term-llm_0.9.14_darwin_arm64.tar.gz"
      sha256 "45081f215dabcbba9b0819a5af090ef1ef947c59b131a846137e5822286a1cc0"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.14/term-llm_0.9.14_darwin_amd64.tar.gz"
      sha256 "13d1c239b3d7d14d955c13a08525dcbe44163a7a32f893479195d7a5f2843b7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.14/term-llm_0.9.14_linux_arm64.tar.gz"
      sha256 "05b80900dbe7ca03e592161a246184bfcde8303380bb370b99ac2818bbab7611"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.14/term-llm_0.9.14_linux_amd64.tar.gz"
      sha256 "f57674b36795e1936aa205b0aaa12da71c2b83eae639cd7e7c423b930a5cc2ad"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
