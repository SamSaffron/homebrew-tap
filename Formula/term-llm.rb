class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.29/term-llm_0.9.29_darwin_arm64.tar.gz"
      sha256 "1c809c7698193a7a182558472d61cb04c2f9984511e060730f62dc2bd1e8fd7d"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.29/term-llm_0.9.29_darwin_amd64.tar.gz"
      sha256 "50e9811d30d4f2118c81cf0129f7c6666457eb64e9713c0f51134eb2ef113cf5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.29/term-llm_0.9.29_linux_arm64.tar.gz"
      sha256 "5f1cb5474600e24b3f75f580ad11fdfd7e0b7132cdea990c71d0e35828f84771"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.29/term-llm_0.9.29_linux_amd64.tar.gz"
      sha256 "5804eb7c314b6fc8cc2b39ac6df171a405fb55c19a6d81b2307d4caccebe0813"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
