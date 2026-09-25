class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.58/term-llm_0.9.58_darwin_arm64.tar.gz"
      sha256 "48d47e6c0221849acef1195887d3617db83807bdfa349fa1462bfeb88516e26e"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.58/term-llm_0.9.58_darwin_amd64.tar.gz"
      sha256 "9acf94c283cf4e47904015dfbed75d41e5937c80b5ffc59926d2510310968a6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.58/term-llm_0.9.58_linux_arm64.tar.gz"
      sha256 "93bf1ace478c36f7412080509181a2b8aa6fc7083247105db4b502eefaf4a839"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.58/term-llm_0.9.58_linux_amd64.tar.gz"
      sha256 "84760c7f3a0888057589c2115893e66a6b2acca19350aab8643bfdfb55cccd3a"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
