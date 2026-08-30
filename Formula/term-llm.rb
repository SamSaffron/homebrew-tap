class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.8/term-llm_0.9.8_darwin_arm64.tar.gz"
      sha256 "e2d86dc00aa642fe95eaf519fdc65ddb6a3dfdf5f1a0502a4d50a40e893cc211"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.8/term-llm_0.9.8_darwin_amd64.tar.gz"
      sha256 "6081b59ef9cc83ba71061102303be985bc8d9be0e7eee65d3852c45615cb67f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.8/term-llm_0.9.8_linux_arm64.tar.gz"
      sha256 "78f0d96eda3a03ee3e7d292e0cad0642e20e392f11c913fc13c596847f539293"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.8/term-llm_0.9.8_linux_amd64.tar.gz"
      sha256 "0a1da2745b03261bae226f148d1657d6c760d08c06d8f95e848e90f5e5d8e421"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
