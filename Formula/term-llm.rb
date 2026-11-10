class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.99/term-llm_0.9.99_darwin_arm64.tar.gz"
      sha256 "b6b5421ec597cfd02230fe973ad5307ade077c182eebd9f58770e034954ad522"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.99/term-llm_0.9.99_darwin_amd64.tar.gz"
      sha256 "37c3671c8abb883af2307958320f031e31b8cc17ce90f07e16da26829e56b290"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.99/term-llm_0.9.99_linux_arm64.tar.gz"
      sha256 "3727ced73895a0e9a9ccce97ec33ccb8bd1efc96af8e11736bda12e0031ccf27"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.99/term-llm_0.9.99_linux_amd64.tar.gz"
      sha256 "1c2004cf869e9470e605197f386347ff938ab88e431edb3637ee65b95c24cc8f"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
