class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.17/term-llm_0.9.17_darwin_arm64.tar.gz"
      sha256 "b17d392b485b8789fa93d105deb7f8e38cf39b96a7f4500f68edfdee36291a63"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.17/term-llm_0.9.17_darwin_amd64.tar.gz"
      sha256 "94d3aea2b1d72127e566d11d7f436fdee0710060a97006ce096987e78f2092b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.17/term-llm_0.9.17_linux_arm64.tar.gz"
      sha256 "61cd9015dc1c563a181a1ed3c26dc337c916d9a265870f40045e7cdfec1f9824"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.17/term-llm_0.9.17_linux_amd64.tar.gz"
      sha256 "07e79198a6826e8d1da9ab4ccdea98d9938f8ae2fabb3814f32c71dee79d8775"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
