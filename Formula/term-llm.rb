class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.97/term-llm_0.9.97_darwin_arm64.tar.gz"
      sha256 "20d9f02a41cfd7f112a844aca47298d851ae208f448b885b6c81a386e7b9ccb1"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.97/term-llm_0.9.97_darwin_amd64.tar.gz"
      sha256 "f98726ec1b977243aa9d5a30dd2e474420816a3bf184a651f5ce8b8ca0168ddb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.97/term-llm_0.9.97_linux_arm64.tar.gz"
      sha256 "2bcb9f18cb2ab7b391f411a5f827ab6e15cce932d327586181bec98cc8e4a549"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.97/term-llm_0.9.97_linux_amd64.tar.gz"
      sha256 "12726e320dc2f4499e1740bf37364055a4d5786b70aab7ff1ac22a8e6d70ff20"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
