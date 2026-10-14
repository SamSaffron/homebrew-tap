class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.77/term-llm_0.9.77_darwin_arm64.tar.gz"
      sha256 "8c44eb2cc8f9a844c64365dc91841d22353fdb7d9ab6b4b300dc0d79a10b2a1f"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.77/term-llm_0.9.77_darwin_amd64.tar.gz"
      sha256 "f32875e42faf82c29aabf34e3a82c220c5e4134a50ff4bc7d092292679dc8b75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.77/term-llm_0.9.77_linux_arm64.tar.gz"
      sha256 "b0bd0aaf424e9ad82f80b2466d1e2aa3faf9b4ed3129f05252f46ae61a75f0a7"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.77/term-llm_0.9.77_linux_amd64.tar.gz"
      sha256 "04b7ecbb989045e7ad3170a58cf3481bcf99180232463f0254ecfe9ed8074490"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
