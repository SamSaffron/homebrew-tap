class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.79/term-llm_0.9.79_darwin_arm64.tar.gz"
      sha256 "f0afb65c4960624fc6c72ea5ca52aff91898b5235040e18c15f9f40a803b3ccf"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.79/term-llm_0.9.79_darwin_amd64.tar.gz"
      sha256 "06e4b77c610671d29c4756dea71903e0e6137c31288f21810cb85fc3d044de55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.79/term-llm_0.9.79_linux_arm64.tar.gz"
      sha256 "54db98e20587775e88dcd406f6bd80f753f02b5d47bdeda144617def9e9fda6f"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.79/term-llm_0.9.79_linux_amd64.tar.gz"
      sha256 "016ded4f5ef8f18a294d1c51c25f3dc9e26aa26f2a510f799f49c37944b1285f"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
