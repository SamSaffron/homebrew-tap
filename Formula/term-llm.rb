class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.61/term-llm_0.9.61_darwin_arm64.tar.gz"
      sha256 "40845e556def8d7b465d9a1440c802a435ce5eddb00b73edac0cf9c2517a3040"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.61/term-llm_0.9.61_darwin_amd64.tar.gz"
      sha256 "093d1126db5117087eee4ed712c16212280d739f233ba2306322d9a520de41f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.61/term-llm_0.9.61_linux_arm64.tar.gz"
      sha256 "d542111fe45b1d6bb91311f1afbbda90d00e54ad0d8609c0d22423ba10dacfc3"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.61/term-llm_0.9.61_linux_amd64.tar.gz"
      sha256 "a5f97347593620d9dce6aed3818cedb1397a66d423a7cab3c46ef7dea50e9048"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
