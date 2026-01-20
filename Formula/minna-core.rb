class MinnaCore < Formula
  desc "Your AI's memory. Local-first. Zero config."
  homepage "https://github.com/getminna/minna-core"
  url "https://github.com/getminna/minna-core/releases/download/v0.1.4/minna-0.1.4-aarch64-apple-darwin.tar.gz"
  sha256 "12278de16f700220d799cbbe9f81699204d8c8b2ffac57708ce2eb7bce15be91"
  version "0.1.4"

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
