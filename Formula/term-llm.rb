class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.51/term-llm_0.9.51_darwin_arm64.tar.gz"
      sha256 "dd95069702e587889c16c0da96e87f786bab3464716ff6ad696efe553f64198a"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.51/term-llm_0.9.51_darwin_amd64.tar.gz"
      sha256 "6480aa12fb1b60c56f60ece26d06ad1fb0841a7a9f35a9014c5a9be83e38a163"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.51/term-llm_0.9.51_linux_arm64.tar.gz"
      sha256 "811676a244b9d40448da43959f57522790cda20c914ba5ca40f2f8366b87c0ea"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.51/term-llm_0.9.51_linux_amd64.tar.gz"
      sha256 "8263788114024d2a230ec834e5fc95bec3e4ec9274f9f72f790ac6703b93db1c"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
