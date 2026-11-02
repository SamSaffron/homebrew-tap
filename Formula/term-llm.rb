class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.91/term-llm_0.9.91_darwin_arm64.tar.gz"
      sha256 "f65e603da8d0100e81501e8a364a77953de2d3b3b722211a882a1fa680db7d92"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.91/term-llm_0.9.91_darwin_amd64.tar.gz"
      sha256 "e001b4a7e21ed60a73f2c999da0d32d6870c3f6f34d59a32dd71a66d388227ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.91/term-llm_0.9.91_linux_arm64.tar.gz"
      sha256 "df441a068806b33f3bb6d3db6de03cdd6f74bda0027e38c87e66c9c8305af522"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.91/term-llm_0.9.91_linux_amd64.tar.gz"
      sha256 "b60eb75adba5279b353a28b8aff8b7cec24d49a89b79ddddac2fa0d9a1aef124"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
