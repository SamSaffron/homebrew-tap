class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.103/term-llm_0.9.103_darwin_arm64.tar.gz"
      sha256 "fd93e4666ca40f6f31822bbee92ffd294d96e019714829757e85e4857e5f254a"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.103/term-llm_0.9.103_darwin_amd64.tar.gz"
      sha256 "9363d9ec4de5d17156d33ad2543a8ca18f9fb5482952c3c1f84891c8ab43870a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.103/term-llm_0.9.103_linux_arm64.tar.gz"
      sha256 "0ed32c5bd6f6ebd9a9ae1dbfda87e446090cfd1643a74f64c9cb79ed9e923320"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.103/term-llm_0.9.103_linux_amd64.tar.gz"
      sha256 "ad6120221d9c34975c0c6ce25f00d9d3b68d0b174c8bf0bcca20e6e04240d9ed"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
