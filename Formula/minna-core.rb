class MinnaCore < Formula
  desc "Your AI's memory. Local-first. Zero config."
  homepage "https://github.com/getminna/minna-core"
  url "https://github.com/getminna/minna-core/releases/download/v0.2.0/minna-0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "93bc713aaa6f3a775f1c8c0bb4ba5ca38c0f92ada018eee438b0abb8fec5de55"
  version "0.2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "minna"
    bin.install "minna-core"
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
