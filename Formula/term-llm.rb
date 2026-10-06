class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.66/term-llm_0.9.66_darwin_arm64.tar.gz"
      sha256 "639cbe10888ea45dbe981c92895397a47c6a319de4878b2dc2ddc9ccdb9523a0"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.66/term-llm_0.9.66_darwin_amd64.tar.gz"
      sha256 "e91dfaa9c95cede443e570c4feb94bcdef34e23facd6cb24ad2152271e58e01e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.66/term-llm_0.9.66_linux_arm64.tar.gz"
      sha256 "51127c71e66669a1e8c0616f698d1ad03b521b38c56ad2649cbc2e7f185013b5"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.66/term-llm_0.9.66_linux_amd64.tar.gz"
      sha256 "f1421d626d7531090fce875a6892d988fbbdcf809c6129c20bfd8abbe4500de2"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
