class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.102/term-llm_0.9.102_darwin_arm64.tar.gz"
      sha256 "9964c38eb6eb92eba4a44d51277de7a4fe46a310b941b0571056a9a172405883"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.102/term-llm_0.9.102_darwin_amd64.tar.gz"
      sha256 "51d87a84f1a917b4d652090bf76de85da2e476b1b33bfc31873dce09ef41cf3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.102/term-llm_0.9.102_linux_arm64.tar.gz"
      sha256 "ba37dbe81f9075a099aab002b5c248342b0c7b80bdbb581990f9368be47123c0"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.102/term-llm_0.9.102_linux_amd64.tar.gz"
      sha256 "25d54bd584eafab306601b4f816652a41b1ed5bcd9cc382e2d96f63390d860e2"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
