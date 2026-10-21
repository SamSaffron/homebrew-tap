class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.83/term-llm_0.9.83_darwin_arm64.tar.gz"
      sha256 "785e470f7c2b06d4af6a60422268de5443d7925100d8023e938e0f31f46cd2c9"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.83/term-llm_0.9.83_darwin_amd64.tar.gz"
      sha256 "5ab17c373d02cf062e4cc114965a32a79925a262a85d378fc17edbb73a5d7d38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.83/term-llm_0.9.83_linux_arm64.tar.gz"
      sha256 "02edfcc374b27bf17f2105769a6a5b9f9f1d683ee1f8c318c2f3b2b6d34f002a"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.83/term-llm_0.9.83_linux_amd64.tar.gz"
      sha256 "efc43178ca12ef9ba90eca10bf20c12d74594bda49fa374bb3486c3da228db35"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
