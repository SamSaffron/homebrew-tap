class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.65/term-llm_0.9.65_darwin_arm64.tar.gz"
      sha256 "7cf87b219abe1216e01dccda38e73c60549fb267defe195dc0f1e3bb7a5e977b"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.65/term-llm_0.9.65_darwin_amd64.tar.gz"
      sha256 "84d7ad8b300b3826fccaf6e1d3525d79990f853ac89a9c8d4a8d090b2bfc6e73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.65/term-llm_0.9.65_linux_arm64.tar.gz"
      sha256 "7b7a8ffd0a8cd7dedc09a928a2f6df625922961fde2335e29ad4f55356152c0d"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.65/term-llm_0.9.65_linux_amd64.tar.gz"
      sha256 "c2392bf7d724e1b843bcae331391305464be71a1a3cd43b41689737365e0f1b6"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
