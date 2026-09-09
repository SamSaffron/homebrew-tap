class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.38/term-llm_0.9.38_darwin_arm64.tar.gz"
      sha256 "30b9fb86690505c327c42e74a3b7779227cee454016d8eff0438134ca0aa911e"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.38/term-llm_0.9.38_darwin_amd64.tar.gz"
      sha256 "74001edba27eda0fe1467246672e4ccfa2511ba810f4e82345fcb700afd41d09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.38/term-llm_0.9.38_linux_arm64.tar.gz"
      sha256 "4ab306defdfab544cce6998b7b11c412f2d3fe7cff3ba6fa577b81a28a78e013"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.38/term-llm_0.9.38_linux_amd64.tar.gz"
      sha256 "559dc2c54a45c724fa5a44fefe7c670e966de577acd3d234156f17b6cc8a36dd"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
