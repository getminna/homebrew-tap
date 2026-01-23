class MinnaCore < Formula
  desc "Your AI's memory. Local-first. Zero config."
  homepage "https://github.com/getminna/minna-core"
  url "https://github.com/getminna/minna-core/releases/download/v0.2.0/minna-0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
