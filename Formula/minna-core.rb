class MinnaCore < Formula
  desc "Your AI's memory. Local-first. Zero config."
  homepage "https://github.com/getminna/minna-core"
  url "https://github.com/getminna/minna-core/releases/download/v0.1.0/minna-0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "db1b1064feddb9c9ea86fa66f9843e6a2fbfc5ddb6ee87af232e5771e8bafb08"
  version "0.1.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "minna"
  end

  def caveats
    <<~EOS

      ╭─────────────────────────────────────────╮
      │                                         │
      │   minna installed successfully          │
      │                                         │
      │   Get started:                          │
      │   $ minna add slack                     │
      │                                         │
      │   Other sources: linear, github, notion │
      │                                         │
      ╰─────────────────────────────────────────╯

    EOS
  end

  test do
    system "#{bin}/minna", "--version"
  end
end
