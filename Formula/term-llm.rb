class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.31/term-llm_0.9.31_darwin_arm64.tar.gz"
      sha256 "f16f2a3e2116544eb1f63a5621dfea1c38e5958b60198f134a0e77842fc9b45d"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.31/term-llm_0.9.31_darwin_amd64.tar.gz"
      sha256 "56972179865b2f0ff2a2353c4e80ee69625c047c85fde0c5cf074ac940a3e1b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.31/term-llm_0.9.31_linux_arm64.tar.gz"
      sha256 "5bb5c83ba7f52d5c07e10acde4b9b8f6c07e7f1c4c3a16a0e5413aa9bdf1cbaa"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.31/term-llm_0.9.31_linux_amd64.tar.gz"
      sha256 "0788727d2b1b22e35844d36eb5d72ef9c705bf382a510a591c95a2f12b73cdf0"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
