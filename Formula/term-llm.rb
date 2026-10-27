class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.88/term-llm_0.9.88_darwin_arm64.tar.gz"
      sha256 "6317c8a740724ba4c548a064f332473196e840fcd0e4cc24ac6fa15cd33048eb"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.88/term-llm_0.9.88_darwin_amd64.tar.gz"
      sha256 "4ca951bd191801212628fb1f28177ac0283fc5198666dfc7c2d2d0ba9f89e56f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.88/term-llm_0.9.88_linux_arm64.tar.gz"
      sha256 "4c554818e602a1c8307775da2b56051635a933e3ff4f93b86bf239226e896c29"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.88/term-llm_0.9.88_linux_amd64.tar.gz"
      sha256 "e7befc8b5e6fa768c5d2574d5b015f40979979e8a7b36ff47e06c2477f1b25e1"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
