class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.54/term-llm_0.9.54_darwin_arm64.tar.gz"
      sha256 "c4388d390c09d1488298b810e3e549c26ca9bfccc6126faa473382d3d517f9f5"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.54/term-llm_0.9.54_darwin_amd64.tar.gz"
      sha256 "6a5eaf8775abcaf5f34bad9a06798bef22e43068b5fc4e81135d3a252ef94e80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.54/term-llm_0.9.54_linux_arm64.tar.gz"
      sha256 "63b920508ae123feb72e9cf42f2cb66e61c77b372c9427c4ff60f8c5a43e4a04"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.54/term-llm_0.9.54_linux_amd64.tar.gz"
      sha256 "8ba23d312f459c249d001e556340e94240e1983e672125c999e70b4f7ba27789"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
