class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.57/term-llm_0.9.57_darwin_arm64.tar.gz"
      sha256 "67f18c9a16dc29352854a3cb3430bd4c4fd1cea59628f122ae98d44fedf4c099"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.57/term-llm_0.9.57_darwin_amd64.tar.gz"
      sha256 "a1df777a24a4e95ebfd035cc8e9a3a1068e9b7e27f324444551c79e64cbe9304"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.57/term-llm_0.9.57_linux_arm64.tar.gz"
      sha256 "562397861c8898043f62ab5802b252c210fe8987f70f684578e08012701c1638"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.57/term-llm_0.9.57_linux_amd64.tar.gz"
      sha256 "c42171badf9c27a4c81caf66e22eda77682ab4f8713349bb1d027a205b5dc333"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
