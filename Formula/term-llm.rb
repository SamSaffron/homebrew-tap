class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.68/term-llm_0.9.68_darwin_arm64.tar.gz"
      sha256 "6a68b38d9620510d02e7d2d8a9e05a01c275434173ea421bb88cbdacd0f1f5e4"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.68/term-llm_0.9.68_darwin_amd64.tar.gz"
      sha256 "f9e2760d248e1040f4c753dc4cdbba4c1f4088e2de033ddd8fc6ed8eb508d425"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.68/term-llm_0.9.68_linux_arm64.tar.gz"
      sha256 "1f849f65d2377f8600d56aa01d3359cdc28e56b644f2a4f6ecb798e164f98dd4"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.68/term-llm_0.9.68_linux_amd64.tar.gz"
      sha256 "22b18891e848e3a96f46092fd00d9ffe78c37cdcb796a2f2e7a5c230e08ae43e"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
