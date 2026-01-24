class MinnaCore < Formula
  desc "Your AI's memory. Local-first. Zero config."
  homepage "https://github.com/getminna/minna-core"
  url "https://github.com/getminna/minna-core.git", tag: "v0.2.3"
  license "MIT"

  head "https://github.com/getminna/minna-core.git", branch: "main"

  depends_on :macos
  depends_on "rust" => :build

  def install
    cd "engine" do
      system "cargo", "build", "--release", "-p", "minna-cli", "-p", "minna-server"
      bin.install "target/release/minna"
      bin.install "target/release/minna-core"
    end
  end

  def caveats
    <<~EOS

      ┌────────────────────────────────────────────────┐
      │                                                │
      │  ✓ minna installed                             │
      │                                                │
      │  Give your AI memory across your work apps     │
      │  Slack · Linear · GitHub · Notion · Jira       │
      │                                                │
      │  Get started:                                  │
      │  $ minna                                       │
      │                                                │
      └────────────────────────────────────────────────┘

    EOS
  end

  test do
    system "#{bin}/minna", "--version"
  end
end
