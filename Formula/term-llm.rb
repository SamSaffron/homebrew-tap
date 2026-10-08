class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.69/term-llm_0.9.69_darwin_arm64.tar.gz"
      sha256 "c5e181ffb10336f4004ae876a46ae33585d1c257a400f7ff5f87cbcc250580b7"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.69/term-llm_0.9.69_darwin_amd64.tar.gz"
      sha256 "824ce997c87482b762fed7b224a1e9894106998f1174b41a32b960015eb29ee2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.69/term-llm_0.9.69_linux_arm64.tar.gz"
      sha256 "025d786d89ff0d4ffdb8a021ba81168c5e81b413d44caa7244f6c61c5cbd2c48"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.69/term-llm_0.9.69_linux_amd64.tar.gz"
      sha256 "34526e2c5b21aa3249d561d60d1b44a8603f654b7b1ce292063559c86c8d399c"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
