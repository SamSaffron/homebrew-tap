class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.80/term-llm_0.9.80_darwin_arm64.tar.gz"
      sha256 "e7291e237474bcc1e55b34ea16bbd89968f38b8e83b7a04fe9e58bef1a6e5909"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.80/term-llm_0.9.80_darwin_amd64.tar.gz"
      sha256 "47a3e28609f7e0265404d239654e0fb3f07d4b4deecbc0309328756cb386a665"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.80/term-llm_0.9.80_linux_arm64.tar.gz"
      sha256 "054036ace97e314d44450268daf90e53ac58dd423acb8ea4d677d5a270498f27"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.80/term-llm_0.9.80_linux_amd64.tar.gz"
      sha256 "29b3f5b42450c3f1ff8d14af75b910e1f50666e3c0bc17bd27d58308742f5103"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
