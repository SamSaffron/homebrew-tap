class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.95/term-llm_0.9.95_darwin_arm64.tar.gz"
      sha256 "c1e851756280452c2832acd9df8ba68f175910cb51c2438b395b35174e41ea71"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.95/term-llm_0.9.95_darwin_amd64.tar.gz"
      sha256 "d08d770b827d3eef556bec88cea6a7113d62512ca07bef12cc32500c826f35aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.95/term-llm_0.9.95_linux_arm64.tar.gz"
      sha256 "b15dac72b14dfe8ac8009d7860d68340b32de466405f5eb0e08ecdaab2365df4"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.95/term-llm_0.9.95_linux_amd64.tar.gz"
      sha256 "4ea220de8226c3bf64c4e530bd8816d78dbf12bb59c834aabd34463d737ae8bd"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
