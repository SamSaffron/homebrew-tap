class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.78/term-llm_0.9.78_darwin_arm64.tar.gz"
      sha256 "2e828734b66b272b5ca9c56f4a2c42a63113641386e97a360fc80e7148c6e93b"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.78/term-llm_0.9.78_darwin_amd64.tar.gz"
      sha256 "b8dd5c691fcef1e4c441be23e684752f82655d13b0ba90300a695205250c2f53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.78/term-llm_0.9.78_linux_arm64.tar.gz"
      sha256 "bb1a92572172b83745c8bc777652c56546b36038dac3cd6513902adbcf7d4796"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.78/term-llm_0.9.78_linux_amd64.tar.gz"
      sha256 "35b29d69b915d7966475f5c95c898c491f4861430c03f4acf1c36d6b241418a1"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
