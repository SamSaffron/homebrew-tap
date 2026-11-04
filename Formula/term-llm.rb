class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.93/term-llm_0.9.93_darwin_arm64.tar.gz"
      sha256 "6d3a2f5de7cb22e1c068c1258d452bfba413adcd7e8a753eaebeb621733bac03"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.93/term-llm_0.9.93_darwin_amd64.tar.gz"
      sha256 "1c27cf796af111ee2192661912d11d12bebedbac70d5ce4cf29d5eddd257066f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.93/term-llm_0.9.93_linux_arm64.tar.gz"
      sha256 "8405afc64d3d313cc15719a0d83511b6edc665b0c012a486ead87f67adde5f6f"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.93/term-llm_0.9.93_linux_amd64.tar.gz"
      sha256 "2d264d175d7f8a7108a3d3530338efa2b81dadcaf5ce02c3d0f701fa88ad3d4e"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
