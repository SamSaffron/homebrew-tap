class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.10/term-llm_0.9.10_darwin_arm64.tar.gz"
      sha256 "a318bef3f774140ced0f19b5b2bb50405ae55d1b9963670e770b739a24f5086a"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.10/term-llm_0.9.10_darwin_amd64.tar.gz"
      sha256 "a437ec7979d7d530cd839bcabb9603653c182555648173ebd381169ae54eb670"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.10/term-llm_0.9.10_linux_arm64.tar.gz"
      sha256 "408bbc8e9d05c5b1c0a9048cc6f0c4516a017a07a93ed6956afd782ea0b3c475"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.10/term-llm_0.9.10_linux_amd64.tar.gz"
      sha256 "2974136146b74db2d82a9579273df0035ab58a21a1179e05f473bb766ff5cf31"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
