class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.21/term-llm_0.9.21_darwin_arm64.tar.gz"
      sha256 "a1de960a8b61ef6346cc562748ec6668bb81919fc9cf341ebc9ab54ca4d0eb10"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.21/term-llm_0.9.21_darwin_amd64.tar.gz"
      sha256 "6f709940f1bb143f541bd3dc819e7ded3918e463dc04f1d3384aa01e6ef9a395"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.21/term-llm_0.9.21_linux_arm64.tar.gz"
      sha256 "5dc996ad736219ff6526a7629cfff7e0bf88043f7dc7890cbb76f94db0107f53"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.21/term-llm_0.9.21_linux_amd64.tar.gz"
      sha256 "dc15dd749531cda70e2671e997fa1b9497fa0e56f5352c547eed73e75919eb33"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
