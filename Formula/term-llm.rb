class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.27/term-llm_0.9.27_darwin_arm64.tar.gz"
      sha256 "473768c5ddd59c5b306d6f9c7c140afd484dbfbd49a0387bd8f340650195fcda"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.27/term-llm_0.9.27_darwin_amd64.tar.gz"
      sha256 "8dfd4cc4a94855e9c435f573c83402948785fe5a7b0bf9a798468cf2e00fe940"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.27/term-llm_0.9.27_linux_arm64.tar.gz"
      sha256 "04c8ade9d75e092763179db5f700e6f4a23de21396530d47dc307ae2d8c3178f"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.27/term-llm_0.9.27_linux_amd64.tar.gz"
      sha256 "10576fe8fabd976cbf3015b779077913d31cd1d284adcecdd473e33b31d40fd8"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
