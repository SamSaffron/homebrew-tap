class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.3/term-llm_0.9.3_darwin_arm64.tar.gz"
      sha256 "c91b81651b4d5427434ee57a0483f8290595e229ce649570b029091cd2c71d0a"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.3/term-llm_0.9.3_darwin_amd64.tar.gz"
      sha256 "b40980ca5a3e3ab16098385f8815d00bc5bad37bd4ddfd2514310de6b04839be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.3/term-llm_0.9.3_linux_arm64.tar.gz"
      sha256 "f99a92e58cd38edd57eaae60ddd25016866802acca272c0c910c8e1ed9ee5105"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.3/term-llm_0.9.3_linux_amd64.tar.gz"
      sha256 "bfa3013198dd02a54d8557aa1a6fe36591e051340fa4d35089c304220171eb48"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
