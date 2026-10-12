class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.72/term-llm_0.9.72_darwin_arm64.tar.gz"
      sha256 "517f276b394981ecc4d04565e91a6f718c65b9d1075d47bdc939550c32cacefd"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.72/term-llm_0.9.72_darwin_amd64.tar.gz"
      sha256 "cd31050d46138bdd7b92926fa268fb388b8733c09e689ddb10bf50c0bcde5764"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.72/term-llm_0.9.72_linux_arm64.tar.gz"
      sha256 "37bdf4eab0cded0a479d58648c7e0db922ec30e48bcfbb5af39aa98212a88a43"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.72/term-llm_0.9.72_linux_amd64.tar.gz"
      sha256 "5eb9e26d3d5f63fe7709bda47e03965f2c9cac6dea03d02fdbae8de9ab71ce1c"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
