class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.45/term-llm_0.9.45_darwin_arm64.tar.gz"
      sha256 "a932fd506a2b5c52d7a8a0cd70eef8b871ac497892c36db77485fd71130b14d3"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.45/term-llm_0.9.45_darwin_amd64.tar.gz"
      sha256 "4c35ea063e92d74c4e682434e4c6ea4a7b5f366cb50f40068f3eb07aad4596db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.45/term-llm_0.9.45_linux_arm64.tar.gz"
      sha256 "fb3fe57d82f57973121db4b4d1907f1fd0f9a5912822c9b0b2a605c06bc78126"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.45/term-llm_0.9.45_linux_amd64.tar.gz"
      sha256 "e40ef838b61bc52c51099cff204b79a38dc2ed76838825e273c7987fce169c75"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
