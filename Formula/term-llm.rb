class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.73/term-llm_0.9.73_darwin_arm64.tar.gz"
      sha256 "85937966f6c57df1a54f1317c73aae2decf1a6bc824201a1f289afb52ae75a79"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.73/term-llm_0.9.73_darwin_amd64.tar.gz"
      sha256 "e98356c3a23d8d53c4c53b4eff2d2a07856ba460fa2f7baf5830926643325de7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.73/term-llm_0.9.73_linux_arm64.tar.gz"
      sha256 "5739be2dc0b75a86106a0e9adc7ef611ff01c2c6107c7f49c40f1882435710ce"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.73/term-llm_0.9.73_linux_amd64.tar.gz"
      sha256 "fbf3462e6c870b9cb3973b5a7c97bc0d4f80ad68cdc2044207bdf6a3ed1f0b25"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
