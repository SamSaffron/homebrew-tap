class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.76/term-llm_0.9.76_darwin_arm64.tar.gz"
      sha256 "1009d013dabb5a9ea355836c04c18ac67355f1782bfe6cd5c74eba926348c96f"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.76/term-llm_0.9.76_darwin_amd64.tar.gz"
      sha256 "f55bdabc495708a4a51a58894648ce82d4f7e769a9438b11a1d2513b1660ed4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.76/term-llm_0.9.76_linux_arm64.tar.gz"
      sha256 "540058cd09704c990239ebd5a76d23eaed198679bc84cb240fe6e4f353590bba"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.76/term-llm_0.9.76_linux_amd64.tar.gz"
      sha256 "86a78c25ed6b0742e41063ed46909571f16f2f1af8c3fa95201fe721c1d2148c"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
