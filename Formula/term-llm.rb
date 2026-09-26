class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.59/term-llm_0.9.59_darwin_arm64.tar.gz"
      sha256 "34365eca32075bc078c06f72f1177b07e49c9c8979bd38ea5c95b8b91978dc2b"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.59/term-llm_0.9.59_darwin_amd64.tar.gz"
      sha256 "f29283f98c95340284aab5a4f4e358d9e180b038ff0b4b93ca4bc24f2ed1819c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.59/term-llm_0.9.59_linux_arm64.tar.gz"
      sha256 "8031699b50c1dcb3e26563bd24a2a1dc96d5de9f9ed4ef5885714c2a53dcd0a4"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.59/term-llm_0.9.59_linux_amd64.tar.gz"
      sha256 "14b369d6039737db7b8174911ecad4e8fd00b1255c5dc75fd595f1c228bbbb91"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
