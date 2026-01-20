class MinnaCore < Formula
  desc "Your AI's memory. Local-first. Zero config."
  homepage "https://github.com/getminna/minna-core"
  url "https://github.com/getminna/minna-core/releases/download/v0.1.5/minna-0.1.5-aarch64-apple-darwin.tar.gz"
  sha256 "5edff67da85d1b50bfdf0e4cd5f8642190c89dd84a4315e4215e6fd1e6e1279a"
  version "0.1.5"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "minna"
    bin.install "minna-core"
  end

  def caveats
    <<~EOS

      ╭─────────────────────────────────────────────╮
      │                                             │
      │   ✓ minna installed                         │
      │                                             │
      │   Your AI now has memory across:            │
      │   Slack · Linear · GitHub · Notion · Jira   │
      │                                             │
      │   Get started:                              │
      │     $ minna add        Connect sources      │
      │     $ minna setup      Configure your AI    │
      │                                             │
      ╰─────────────────────────────────────────────╯

    EOS
  end

  test do
    system "#{bin}/minna", "--version"
  end
end
