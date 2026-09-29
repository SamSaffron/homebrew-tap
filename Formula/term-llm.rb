class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.60/term-llm_0.9.60_darwin_arm64.tar.gz"
      sha256 "7b7c638dd9bc387187d88e5cdcd5917668cbd1e28bc49cefdb095161bd9d7283"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.60/term-llm_0.9.60_darwin_amd64.tar.gz"
      sha256 "b115ccca830b522f80e739e29d7b991c1b4256ddd14ed6d803c5f68e02808037"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.60/term-llm_0.9.60_linux_arm64.tar.gz"
      sha256 "e56dd9c651ae568a5b674a84f08658b75ea4afdd387ff6debbb3f6ab8a945c94"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.60/term-llm_0.9.60_linux_amd64.tar.gz"
      sha256 "b2b19d99aef466606cd42868675a83b2af3b92b56256c27963819136eb342c3d"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
