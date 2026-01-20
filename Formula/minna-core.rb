class MinnaCore < Formula
  desc "Your AI's memory. Local-first. Zero config."
  homepage "https://github.com/getminna/minna-core"
  url "https://github.com/getminna/minna-core/releases/download/v0.1.3/minna-0.1.3-aarch64-apple-darwin.tar.gz"
  sha256 "da474d900878c3bf42caf1bdf9a0c77debb137f1bf80c883cfa4de8899d814e3"
  version "0.1.3"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "minna"
    bin.install "minna-core"
  end

  def caveats
    <<~EOS

      ╭───────────────────────────────╮
      │                               │
      │   minna installed successfully │
      │                               │
      │   Run `minna` to get started  │
      │                               │
      ╰───────────────────────────────╯

    EOS
  end

  test do
    system "#{bin}/minna", "--version"
  end
end
