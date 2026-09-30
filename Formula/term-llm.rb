class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.63/term-llm_0.9.63_darwin_arm64.tar.gz"
      sha256 "0520f62c949745fd10e043ceb30d674756a2b4575531e51dcbb06151aaf98663"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.63/term-llm_0.9.63_darwin_amd64.tar.gz"
      sha256 "5b329276fb004fd79a5ba3e5aa5a4f2ab186419f904599a90eaf674df0ae4e45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.63/term-llm_0.9.63_linux_arm64.tar.gz"
      sha256 "f10e684a65b0fe9250652eba4604ce9915164997a8f75851ef23dc5791907eee"
    end

    on_intel do
      url "https://github.com/SamSaffron/term-llm/releases/download/v0.9.63/term-llm_0.9.63_linux_amd64.tar.gz"
      sha256 "f0276a6a6c61bf2940dc6776079d709c8acb683cd32222321baf6669fcc4e91d"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
