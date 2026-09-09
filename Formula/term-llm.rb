class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.39/term-llm_0.9.39_darwin_arm64.tar.gz"
      sha256 "fd497e966e76590b977874b86e066ac168094b16fee2a3ca04286617a7e59c09"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.39/term-llm_0.9.39_darwin_amd64.tar.gz"
      sha256 "4f7305175df9d61badeb05dac6742851e3b860cdf41549ebfabb06cb9f85122d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.39/term-llm_0.9.39_linux_arm64.tar.gz"
      sha256 "753dd1da0bb6f18a971d9d14fdb6b0350e4b9fe480cff9fa1e4dfc3accc04291"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.39/term-llm_0.9.39_linux_amd64.tar.gz"
      sha256 "6e4d2aac88ff04fd87fb919af01428bfea4e087825a4546bbf1bc4d6ea61e3be"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
