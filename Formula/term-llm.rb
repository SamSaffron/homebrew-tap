class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.86/term-llm_0.9.86_darwin_arm64.tar.gz"
      sha256 "c5fd6b6797f811ad4fba9083754dd29f19f4cd933d773698973b59d9e2a60fd7"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.86/term-llm_0.9.86_darwin_amd64.tar.gz"
      sha256 "2dd285779605da41c5ac075a63b478a5913ee66651e18c4ffe81a3b9cf285034"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.86/term-llm_0.9.86_linux_arm64.tar.gz"
      sha256 "a67b84e29bf9b978155091768cea5bf18cfebefb65a18a91dd503deacb83b5bb"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.86/term-llm_0.9.86_linux_amd64.tar.gz"
      sha256 "2e6b0aee07be289f0cb939b915604877ef8dc2af8699df8fc5299d340a41cd65"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
