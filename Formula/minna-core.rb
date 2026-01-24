class MinnaCore < Formula
  desc "Your AI's memory. Local-first. Zero config."
  homepage "https://github.com/getminna/minna-core"
  url "https://github.com/getminna/minna-core/releases/download/v0.2.2/minna-0.2.2-aarch64-apple-darwin.tar.gz"
  sha256 "cf7f244e5e19b5835d9ff508d251932ce927361c60044698753a2ff62b3ff24f"
  version "0.2.2"

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
