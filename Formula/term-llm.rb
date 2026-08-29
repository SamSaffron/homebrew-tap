class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.4/term-llm_0.9.4_darwin_arm64.tar.gz"
      sha256 "8277f0488887da330d9d073cd809ecb3284546ea13a33a841a974ae855bbcb8f"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.4/term-llm_0.9.4_darwin_amd64.tar.gz"
      sha256 "9859b327d9b9f9d649fd03a2c541f904a66426fb6c219ef3faeb3e2910173548"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.4/term-llm_0.9.4_linux_arm64.tar.gz"
      sha256 "cad38e4d5885af282ed01f49f4c0920368295ae550859dc3f464be88497afaf5"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.4/term-llm_0.9.4_linux_amd64.tar.gz"
      sha256 "10451ba6ee0df570e13309593d98aa9496f06dc5fcc676b6eb474d473951f838"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
