class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.53/term-llm_0.9.53_darwin_arm64.tar.gz"
      sha256 "e60c383fedebe9bf66d6ec77128416cfcaa1d2bbdcbe19bc5fd9f64162980ac5"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.53/term-llm_0.9.53_darwin_amd64.tar.gz"
      sha256 "761a5ef7e65406c00ad16ffcfbf96b562b3cc40a2cc621a93b74f6727f813a77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.53/term-llm_0.9.53_linux_arm64.tar.gz"
      sha256 "0b398ced5d34b102f08ad5f51f304d0c0086ad43eadd94234cb13c055fcb3080"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.53/term-llm_0.9.53_linux_amd64.tar.gz"
      sha256 "485459118ac457aae12c3e830609c0132f8eca2ac51614e5c2cc1cb7f5802d10"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
