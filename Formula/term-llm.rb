class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.67/term-llm_0.9.67_darwin_arm64.tar.gz"
      sha256 "208977b7bb466e8dd65cd9166e31a542727c3b803c568713373b77682291022f"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.67/term-llm_0.9.67_darwin_amd64.tar.gz"
      sha256 "5c8416f96edc783e0880a89fb7d81d69ed507f72ede54bd8479d589cce1323f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.67/term-llm_0.9.67_linux_arm64.tar.gz"
      sha256 "9a6e2ba5ec40382307b45af2c3997eecfc3eece36e959d4f31d0206455f67b32"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.67/term-llm_0.9.67_linux_amd64.tar.gz"
      sha256 "9aa7a4e6fe3bd9cc4106fb176e719a5bc27204c111cc7bb21f3b1e87268034c3"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
