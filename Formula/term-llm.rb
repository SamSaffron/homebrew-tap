class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.24/term-llm_0.9.24_darwin_arm64.tar.gz"
      sha256 "f05f56478aa28ff0f501dda4630518f1437ae6306b1389050d95cd3183a17fb6"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.24/term-llm_0.9.24_darwin_amd64.tar.gz"
      sha256 "2d3479b1ef6201e283a3174a0f02234c3efbd4ad19f57531cf3efbf075d07209"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.24/term-llm_0.9.24_linux_arm64.tar.gz"
      sha256 "428f449ffc3f029d6c2c2b5fc7320f09a1bf32a2d50921b05a2b7e53c3770df9"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.24/term-llm_0.9.24_linux_amd64.tar.gz"
      sha256 "145e35e1b6e5e325a2c41595f24751acdad472af930ab330a13ff335ab0f76e2"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
