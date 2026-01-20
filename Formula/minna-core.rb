class MinnaCore < Formula
  desc "Your AI's memory. Local-first. Zero config."
  homepage "https://github.com/getminna/minna-core"
  url "https://github.com/getminna/minna-core/releases/download/v0.1.6/minna-0.1.6-aarch64-apple-darwin.tar.gz"
  sha256 "8f5d7a59537439cf8e08deab603c3755001b156b5800a6894a2659ab93915efc"
  version "0.1.6"

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
      │  $ minna                                       │
      │                                                │
      └────────────────────────────────────────────────┘

    EOS
  end

  test do
    system "#{bin}/minna", "--version"
  end
end
