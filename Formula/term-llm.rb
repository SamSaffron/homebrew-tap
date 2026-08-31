class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.13/term-llm_0.9.13_darwin_arm64.tar.gz"
      sha256 "ee926a354bd4b2b33d5934da1543050e1bf2c4d8fadee00ec781424e0fd17639"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.13/term-llm_0.9.13_darwin_amd64.tar.gz"
      sha256 "86bc1a380d1fef8174b5dd7c1a957526196618ada538c9a94ccdae27e62c7a38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.13/term-llm_0.9.13_linux_arm64.tar.gz"
      sha256 "4d940ddd4a4c8bb3c458b5bb505009a2e40d09f5a120201161bc740a4aacadbb"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.13/term-llm_0.9.13_linux_amd64.tar.gz"
      sha256 "80e27432565f3bb2da43ba0c6ad89410ecd08f4a8b635a0b9496b604749cce61"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
