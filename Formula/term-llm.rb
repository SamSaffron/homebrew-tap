class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.33/term-llm_0.9.33_darwin_arm64.tar.gz"
      sha256 "e7bc8c8fce458992c8207771163c549d3ef2b7bcdcac9a380833c78988ad2f51"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.33/term-llm_0.9.33_darwin_amd64.tar.gz"
      sha256 "4731b50f4abaaa5f8d65ef09f7b03f9e7468064565b57fe00f957207f50039e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.33/term-llm_0.9.33_linux_arm64.tar.gz"
      sha256 "de41b7ff405cf8276213501ee905b3c2a80cf62877de4bccbb9463775c0c3eb7"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.33/term-llm_0.9.33_linux_amd64.tar.gz"
      sha256 "f55e2862ba1dd1193848eabc6afade19a5d526c8bb2d8473821842d4d0752105"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
