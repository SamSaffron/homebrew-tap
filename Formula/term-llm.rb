class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.87/term-llm_0.9.87_darwin_arm64.tar.gz"
      sha256 "66f7f914cab6a0a9b1d2cbecb12ceff629df2cd52d2a9c67750f75d67acbc4b8"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.87/term-llm_0.9.87_darwin_amd64.tar.gz"
      sha256 "071e5c4ca19ad2b176327c9d103ae328f6d132bce250d07902a0970a2fbdeb8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.87/term-llm_0.9.87_linux_arm64.tar.gz"
      sha256 "7ad6214bac08c1f5317b39288b10f2119a4cf078133840d22280989a076d23e7"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.87/term-llm_0.9.87_linux_amd64.tar.gz"
      sha256 "23c24b0cc57c24882e89ef5d9b0eba63602b4a1ebfd79ba8354e2a6ef0812ede"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
