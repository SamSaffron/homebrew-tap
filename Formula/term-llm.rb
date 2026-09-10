class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.42/term-llm_0.9.42_darwin_arm64.tar.gz"
      sha256 "64d1939229cd8469399e113690d0dac00133140bdcddc899f26d84be547f6ea4"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.42/term-llm_0.9.42_darwin_amd64.tar.gz"
      sha256 "81e98c503e8c72923c46893d652fe13a2e839083102339096799d8b456b9f704"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.42/term-llm_0.9.42_linux_arm64.tar.gz"
      sha256 "0ccf2e94bb44ee09423e049d21faff49c717f8a25df5c54bda83237067691078"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.42/term-llm_0.9.42_linux_amd64.tar.gz"
      sha256 "6ed924ca9f2f42563f691083a9372f7d30fbc69350a9fe9dc9225db17cd8b70d"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
