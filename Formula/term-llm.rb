class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.18/term-llm_0.9.18_darwin_arm64.tar.gz"
      sha256 "ebfe5e1f8e9de07dd61a320037434b80493272603bc21bc655460aa572fa0848"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.18/term-llm_0.9.18_darwin_amd64.tar.gz"
      sha256 "95088df407c751b58c2333147e73737e24cb45e4c54a0d9c1eaa7cc9f7f62394"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.18/term-llm_0.9.18_linux_arm64.tar.gz"
      sha256 "76b225c31c2c4b64221c920f0f32e413ebc72e3e66231d380c93f044555f871e"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.18/term-llm_0.9.18_linux_amd64.tar.gz"
      sha256 "42c948b740205f2e7fe07470d3db01c007aa1a36d439e52713a3ec1693ae1d53"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
