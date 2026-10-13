class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.74/term-llm_0.9.74_darwin_arm64.tar.gz"
      sha256 "8d3d33cd41138b0f0cab114851e767a51a783d9f1e6b46f73fd6eb923e6d927a"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.74/term-llm_0.9.74_darwin_amd64.tar.gz"
      sha256 "b43b5016f79ea6d39d5be053eefeb8fc03558bc8dd9116dc832e1d2cb8603317"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.74/term-llm_0.9.74_linux_arm64.tar.gz"
      sha256 "8f6c671923796dde9c35f48dcc5fdbd23a176c492293ae493fca7769cfae1472"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.74/term-llm_0.9.74_linux_amd64.tar.gz"
      sha256 "94bfe0914f4d766c0f88b9b3f2ecf1c4a7385927ed7b4adaf8b25fb28f5efb86"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
