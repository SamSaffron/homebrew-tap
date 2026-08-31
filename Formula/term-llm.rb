class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.11/term-llm_0.9.11_darwin_arm64.tar.gz"
      sha256 "f9ca763d73769a3cd539a473c037000cc07fb0da20353348b7dcbaa2a1d7bf47"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.11/term-llm_0.9.11_darwin_amd64.tar.gz"
      sha256 "d60b08c35f4a03bbca546dbd6c65516eb64cfe88f13117d467dcfd540edef55c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.11/term-llm_0.9.11_linux_arm64.tar.gz"
      sha256 "bf91a3d5df660d190d3287493f3b3adeef25ef1caa259b9408d35af3d70a8751"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.11/term-llm_0.9.11_linux_amd64.tar.gz"
      sha256 "afd92083c3cf3019d4d64249eb49a2be0b633c5a535f6da711acfdd9847d1d6d"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
