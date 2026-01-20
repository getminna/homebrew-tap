class MinnaCore < Formula
  desc "Your AI's memory. Local-first. Zero config."
  homepage "https://github.com/getminna/minna-core"
  url "https://github.com/getminna/minna-core/releases/download/v0.1.1/minna-0.1.1-aarch64-apple-darwin.tar.gz"
  sha256 "2ef8203e950b6f5595e137c8d34f5caef75ebc0afbcb6ebd9e5fe0d824111da2"
  version "0.1.1"

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
