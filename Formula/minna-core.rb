class MinnaCore < Formula
  desc "Your AI's memory. Local-first. Zero config."
  homepage "https://github.com/getminna/minna-core"
  url "https://github.com/getminna/minna-core/releases/download/v0.1.2/minna-0.1.2-aarch64-apple-darwin.tar.gz"
  sha256 "fe1467e0c2d24b2d5d8e4c89eaefe1f2ec384168d6711a0c14241061d16283ec"
  version "0.1.2"

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
