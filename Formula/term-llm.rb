class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.56/term-llm_0.9.56_darwin_arm64.tar.gz"
      sha256 "645a5d18eb49d045c5053848eee12eec9aa24b8a52a08eecfdea0be9a7c5074d"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.56/term-llm_0.9.56_darwin_amd64.tar.gz"
      sha256 "2f647e50274e43f4ede96bf8d2b2793e0025527fa32cd1d1f0c8dc40d81d9fa2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.56/term-llm_0.9.56_linux_arm64.tar.gz"
      sha256 "920140a411218a1d50af6bcea01be94f9e97e60a50ddcae3b5b3cf4cd12f53fe"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.56/term-llm_0.9.56_linux_amd64.tar.gz"
      sha256 "9e41dbea4ce5cdf9de40c376d49861fdecd93001c3b2397456e1a50204644fa1"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
