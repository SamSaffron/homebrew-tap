class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.84/term-llm_0.9.84_darwin_arm64.tar.gz"
      sha256 "a737c2458e0eee0442e036622f6f6b7619b4ddc3282aa95e2b26160c44051691"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.84/term-llm_0.9.84_darwin_amd64.tar.gz"
      sha256 "34d7a3fed4e5b48d99b3c331f15a8b7ebc007c673377718f00bdd236fadf624f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.84/term-llm_0.9.84_linux_arm64.tar.gz"
      sha256 "82c095d565b055d7c768d65f5b92d519d4449d3971d018f5dfefd3e3abb7c77b"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.84/term-llm_0.9.84_linux_amd64.tar.gz"
      sha256 "2597b3212316c8cfc941ad481cd7e99ebc6ce594cf56c1507cb5ebd2c62e86ec"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
