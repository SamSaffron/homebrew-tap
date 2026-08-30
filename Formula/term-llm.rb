class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.9/term-llm_0.9.9_darwin_arm64.tar.gz"
      sha256 "43193acd0c8736d0d664f57a6d2eaac6753ff368a70d91b136436554f1a030cd"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.9/term-llm_0.9.9_darwin_amd64.tar.gz"
      sha256 "9b16113fcbd8dde0e83d140ddbb75a6be60dd596678379bf224792ea7c2fcdb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.9/term-llm_0.9.9_linux_arm64.tar.gz"
      sha256 "267f29771cf356e3e3872e859de49f02ccdeec35e5720bcb29af37e65c342d84"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.9/term-llm_0.9.9_linux_amd64.tar.gz"
      sha256 "3615f18a780f48b1dbff636ef4a61e8e17d4208af5ccce2117511ee524f5c589"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
