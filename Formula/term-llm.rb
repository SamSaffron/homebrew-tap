class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.26/term-llm_0.9.26_darwin_arm64.tar.gz"
      sha256 "3f61dc59eb6a8d60b02235ce071a861d65d7d1cb53a6fa94aab70d4253047e82"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.26/term-llm_0.9.26_darwin_amd64.tar.gz"
      sha256 "9f4312efb894e3f234364fc7053ae721bbd10e89c06a194d326df00e5ffaeb1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.26/term-llm_0.9.26_linux_arm64.tar.gz"
      sha256 "f80e1f1641b9d6d00ed43307eb14534c13fd7cd75aafede6797a3f04c81444ac"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.26/term-llm_0.9.26_linux_amd64.tar.gz"
      sha256 "0b03efc3ccaa185ce078d89839adfc2fc234d00d354fd8a11f387e86bd18eb97"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
