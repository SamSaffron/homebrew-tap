class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.12/term-llm_0.9.12_darwin_arm64.tar.gz"
      sha256 "352d304a96931b82555b28ddec2b1274e7805375629c3beb170dec20d81000f9"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.12/term-llm_0.9.12_darwin_amd64.tar.gz"
      sha256 "657ef1f8f3bb2e37ece6ae5719fa7b3653ed375c05320517cb2fb6e8ab983922"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.12/term-llm_0.9.12_linux_arm64.tar.gz"
      sha256 "959decf947020ef0040362b905b64849b9a30f97b63b7deb8813bb457ccbc3d7"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.12/term-llm_0.9.12_linux_amd64.tar.gz"
      sha256 "ba610edc906ce6e03c120eefa4f2f9f4f56533af8eff48cf3405f865b12c6bcf"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
