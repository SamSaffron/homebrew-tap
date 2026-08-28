class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.0/term-llm_0.9.0_darwin_arm64.tar.gz"
      sha256 "753c0b325c48eb0e528cc6db250a0d7e22b0fefef888a50aa15b501ef2d1b995"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.0/term-llm_0.9.0_darwin_amd64.tar.gz"
      sha256 "acae41f8ebbb8003a5877adfcc634df1f0b8e03feabcff116073aa224021b37d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.0/term-llm_0.9.0_linux_arm64.tar.gz"
      sha256 "10f100e1797ce1ac5d453ea5b0fcac0caa7548af6f1894a8dd74f37a23211425"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.0/term-llm_0.9.0_linux_amd64.tar.gz"
      sha256 "38285f094d2f7f923708f229c3a9854cbf1c4108ab923a64c5250f0fe87b2cc3"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
