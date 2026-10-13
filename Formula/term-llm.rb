class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.75/term-llm_0.9.75_darwin_arm64.tar.gz"
      sha256 "e3144e6a8b1388c6690e71cf7ac309f23c2e8d10c9c82cba29e6043c74d62950"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.75/term-llm_0.9.75_darwin_amd64.tar.gz"
      sha256 "659e542dd2e196a6b3bf7f7d1424e64da8fd796354558c002e7df7f32cfe8ac3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.75/term-llm_0.9.75_linux_arm64.tar.gz"
      sha256 "884730b6ff52fc98447ed6c98d5c65e0d6f395592870922cc5c231f6e2ce5b7d"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.75/term-llm_0.9.75_linux_amd64.tar.gz"
      sha256 "88419f764371e985e2ca636fc064bae8c658aa8f3b49fc90361a77961da2ba8a"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
