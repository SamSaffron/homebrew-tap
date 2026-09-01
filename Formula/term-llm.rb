class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.16/term-llm_0.9.16_darwin_arm64.tar.gz"
      sha256 "7f54fe64826f598d77abe66c4ee52b47eceadb65080f755ea990c4216634982a"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.16/term-llm_0.9.16_darwin_amd64.tar.gz"
      sha256 "dc8195140f30412ed55363b062e87fbcffbe6691fe7a9e77cde6844269430484"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.16/term-llm_0.9.16_linux_arm64.tar.gz"
      sha256 "9061e60777dbccadd53e69aa850e87e06a8d007f293efb4461a049a6e2ca896c"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.16/term-llm_0.9.16_linux_amd64.tar.gz"
      sha256 "a2997587d26f4d18ad6c07d7fd9333ca3a3f5184e471e0514bbe6f31cb547d8b"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
