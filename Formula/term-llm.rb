class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.35/term-llm_0.9.35_darwin_arm64.tar.gz"
      sha256 "b1152d01498b5a14ec01425a0658764ceba7d459b6c437d431ea454986ec9c73"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.35/term-llm_0.9.35_darwin_amd64.tar.gz"
      sha256 "f2bc8543a558a719071a5aba19be167432587243c4f3f7211f03a9e7317fbc57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.35/term-llm_0.9.35_linux_arm64.tar.gz"
      sha256 "9259e7fa9251d9f41d485d9018c566c8298b07e49e7c5293278b74715a532c5c"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.35/term-llm_0.9.35_linux_amd64.tar.gz"
      sha256 "6e1768bfa4e38d01ec3c724a87b9cf546d2f18c98d802b4732d0102df3ad237a"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
