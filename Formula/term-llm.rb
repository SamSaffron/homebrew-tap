class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.55/term-llm_0.9.55_darwin_arm64.tar.gz"
      sha256 "5c03ac9e3ea50f2b283c64513b202d8e5a392ec2537ad76b715e04af6d43bcba"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.55/term-llm_0.9.55_darwin_amd64.tar.gz"
      sha256 "c4232444b5e11832d6f18b9b94cdc119d7c0e33e0105cf22dcb00b3402b05af8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.55/term-llm_0.9.55_linux_arm64.tar.gz"
      sha256 "913da35e1aa8da5b923af4c600a2ed3ad3974e0debe57fd0b9f291516d59cc2f"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.55/term-llm_0.9.55_linux_amd64.tar.gz"
      sha256 "41e62e21a672c1970ff6a9048a96d52590ce21af992e0340f99a006610764c57"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
