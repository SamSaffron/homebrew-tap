class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.90/term-llm_0.9.90_darwin_arm64.tar.gz"
      sha256 "7f3d3341f7f076521fc9d2b3196da229619c9ada105c43d2bbc73cb9539f53b9"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.90/term-llm_0.9.90_darwin_amd64.tar.gz"
      sha256 "25d15fe8834065d01e7e9bf8ed2f56d0120b1cb85fd7e0ccbbbd2fa10c500d74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.90/term-llm_0.9.90_linux_arm64.tar.gz"
      sha256 "b8211f6df2306b539fc610792113b553879d04d9f819415768733ad396285f47"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.90/term-llm_0.9.90_linux_amd64.tar.gz"
      sha256 "ccf92700b3b0200f23f91c2e394ea35d614080c42ddfbf7e2e8a614037d47842"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
