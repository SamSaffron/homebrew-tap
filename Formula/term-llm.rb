class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.92/term-llm_0.9.92_darwin_arm64.tar.gz"
      sha256 "cd38bbec658fb402f9ca1b59873d1035fba371969a09e8c36fef1b6b9a28e5a4"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.92/term-llm_0.9.92_darwin_amd64.tar.gz"
      sha256 "77419a07fda1f71de9ca7ddd73d86b3ec006fb49f5e668340f49683b6bc51129"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.92/term-llm_0.9.92_linux_arm64.tar.gz"
      sha256 "9dc1c70c1a59f24bad932e89dd71f80f289a801531d261df9975be419dd19a0a"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.92/term-llm_0.9.92_linux_amd64.tar.gz"
      sha256 "b44dd12808d439ccc7b407931b5e0d3c357809def12b4a071e232a1916aa0aa5"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
