class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.43/term-llm_0.9.43_darwin_arm64.tar.gz"
      sha256 "26f3a1b82c4044b723b692b261d2a841f24b24e69f34d5b58237cc5eda12ecd7"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.43/term-llm_0.9.43_darwin_amd64.tar.gz"
      sha256 "03beabfde97002777998c7293c435762623d3bb53e740dfbbcca4a12a8198209"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.43/term-llm_0.9.43_linux_arm64.tar.gz"
      sha256 "53958afc3c8a5c78ecb236336903859bc8277d152569c997789fa0d2fe9d804d"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.43/term-llm_0.9.43_linux_amd64.tar.gz"
      sha256 "d121d40f253aa08a3646f39dee5deb088c8f700c86535c77808591b45feb4347"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
