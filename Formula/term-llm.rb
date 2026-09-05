class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.30/term-llm_0.9.30_darwin_arm64.tar.gz"
      sha256 "9b246ef80418517ce8fac56485d7d56165640e17c40eb1d751b00ea94c86eb32"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.30/term-llm_0.9.30_darwin_amd64.tar.gz"
      sha256 "5bde360b132661af2ba698444992283e3cdbd1342325d4a21536f664345210e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.30/term-llm_0.9.30_linux_arm64.tar.gz"
      sha256 "3ae9c523293867b446b284579789c906b444e7a4a896505b5a6a096e92e1c43d"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.30/term-llm_0.9.30_linux_amd64.tar.gz"
      sha256 "321e805bfc0e30dbb0d6b0f06c58eb386cb1f8481f7f70dfd2adf473c8ca8018"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
