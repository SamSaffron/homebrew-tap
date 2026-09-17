class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.49/term-llm_0.9.49_darwin_arm64.tar.gz"
      sha256 "b5b640e734fe77a252977119b3c5a91fd4a22241e30aca11f1020df0fefe31c1"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.49/term-llm_0.9.49_darwin_amd64.tar.gz"
      sha256 "b41b1bbb430f842fb536679e401b416c50ddaa29f1756a306394310be5c12b33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.49/term-llm_0.9.49_linux_arm64.tar.gz"
      sha256 "7a0ca19730643f2986899a743905c8c08d2e00c38a5c8af7f5959b4f4953ef6b"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.49/term-llm_0.9.49_linux_amd64.tar.gz"
      sha256 "a38621ca190965ebd7dd75de060b4b16dfe138406f5777960e54ec3865941da8"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
