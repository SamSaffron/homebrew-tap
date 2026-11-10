class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.96/term-llm_0.9.96_darwin_arm64.tar.gz"
      sha256 "e74ca83c5f1e8c38251d128a0a05de8798b7f9270333751f4607ab0b87c6ae6e"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.96/term-llm_0.9.96_darwin_amd64.tar.gz"
      sha256 "1aaffa9f5609a2c48049942d97bd82ab5b0afca865ad7fac261edad268802a7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.96/term-llm_0.9.96_linux_arm64.tar.gz"
      sha256 "56d3abaaec47f7c5cbb4e7d48cc630831ff10f467b5efab2f93f333f9b36424a"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.96/term-llm_0.9.96_linux_amd64.tar.gz"
      sha256 "9be461b28a575b536afe2bbbe1074ff15d77a19c0a9beaa1b0dbb0307da19f6f"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
