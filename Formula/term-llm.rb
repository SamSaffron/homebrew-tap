class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.94/term-llm_0.9.94_darwin_arm64.tar.gz"
      sha256 "0ac4f265b2307546c12f69f98d8bc8a22deae50f19cad9a31ca95472cb3bcebd"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.94/term-llm_0.9.94_darwin_amd64.tar.gz"
      sha256 "f37f1298c53e535028c764aa19936fe1d2c28e063461fb7728f7115c0713de4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.94/term-llm_0.9.94_linux_arm64.tar.gz"
      sha256 "b39337126503ee61b99f7a4118a32db6a6efc3aa66434ede6d7ade7734b8629b"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.94/term-llm_0.9.94_linux_amd64.tar.gz"
      sha256 "ed99cb76976252cbd07ef62e5d636233f911601830541ae4069d9fdf12922f48"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
