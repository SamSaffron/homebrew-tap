class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.22/term-llm_0.9.22_darwin_arm64.tar.gz"
      sha256 "9877dc01c41da7cf729620eba3af682409516e4c7e6c316493f4c8e9af495e3f"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.22/term-llm_0.9.22_darwin_amd64.tar.gz"
      sha256 "f16cfc4b5e55f52aee2a669879b49ea5f681129f8c61d1cef809024ad783ca5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.22/term-llm_0.9.22_linux_arm64.tar.gz"
      sha256 "cb8fd3326fae5b2c32bb01c6ebebf346a6d3213fb914f65b515721d23c2ccfbe"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.22/term-llm_0.9.22_linux_amd64.tar.gz"
      sha256 "c451e32056acf71fc4d355020d0206ce79c3343ffd3e4e47b7579f9ad6862b54"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
