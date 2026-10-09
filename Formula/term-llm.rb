class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.70/term-llm_0.9.70_darwin_arm64.tar.gz"
      sha256 "17526aeff7c7eb86e79a31a18c3dce0a0b4e3ff66a01ba4028544a341b7f332e"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.70/term-llm_0.9.70_darwin_amd64.tar.gz"
      sha256 "71b12a603149a992cc9422897520b043ab9f994bfdb4e081d8d1ebe9d916d72f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.70/term-llm_0.9.70_linux_arm64.tar.gz"
      sha256 "c81502d698403b09ffbd8249c64bf56db99e67a619db9f8f46f725bee7cf1f68"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.70/term-llm_0.9.70_linux_amd64.tar.gz"
      sha256 "9502a8f704872277eb749caf9be6170ee289e9d700466f3433c2b052fa910fd9"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
