class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.82/term-llm_0.9.82_darwin_arm64.tar.gz"
      sha256 "92ddf9de3f040af836994d2becdc8522aa9eab7211bf22b34dabca9c69cc1487"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.82/term-llm_0.9.82_darwin_amd64.tar.gz"
      sha256 "9c18ec4c1ba1b0bd24aaffc5c3e43a4ee2ba9d3f69214dce4c2010d863156d8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.82/term-llm_0.9.82_linux_arm64.tar.gz"
      sha256 "a58fe87ebfa64ba05a8d0af83ff940bafac74a24d7f30b8f4d7605904057d5da"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.82/term-llm_0.9.82_linux_amd64.tar.gz"
      sha256 "5d8c68ef11ae20cf6416e96a14592902df5190ea20578ff5b5ceeb4b58ed4613"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
