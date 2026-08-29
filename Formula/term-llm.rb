class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.6/term-llm_0.9.6_darwin_arm64.tar.gz"
      sha256 "78a04ea4ace42680c1fdffe45a74b77f73359a3d804cbe6514d760a7a924c4f1"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.6/term-llm_0.9.6_darwin_amd64.tar.gz"
      sha256 "13474f679d2a591eb54cff6d3a769ec27f037a8003db812b51d87b8208b82e1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.6/term-llm_0.9.6_linux_arm64.tar.gz"
      sha256 "c5c4f0cfdf06b5f8b1758a7cc813d560b231e0f11f4e73c1a85b1a59b577a8ad"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.6/term-llm_0.9.6_linux_amd64.tar.gz"
      sha256 "35f5eda8dac4ad91ad51f875c584ba6f56d258a47471401ff928d71bc292fc1a"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
