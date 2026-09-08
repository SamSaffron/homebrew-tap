class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.37/term-llm_0.9.37_darwin_arm64.tar.gz"
      sha256 "ff06f61c99fe5ecbe0ada34b91249f033db8051192ccc9e95ec97ef5dca37803"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.37/term-llm_0.9.37_darwin_amd64.tar.gz"
      sha256 "0a18f1d1a82f960b06b87d095a78bad4d319d22f264e09f9210e1820d632eab5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.37/term-llm_0.9.37_linux_arm64.tar.gz"
      sha256 "51bca614f79eb9cd14b6c3a879dffa3d8d8abcea3662dcfc9de94b4cc01eb00f"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.37/term-llm_0.9.37_linux_amd64.tar.gz"
      sha256 "5614ee6d76c16a16c9bf8a5995f330e2a27fde6a399d403d21176cbf3e756834"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
