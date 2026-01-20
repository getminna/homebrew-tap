class MinnaCore < Formula
  desc "Your AI's memory. Local-first. Zero config."
  homepage "https://github.com/getminna/minna-core"
  url "https://github.com/getminna/minna-core/releases/download/v0.1.0/minna-0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "9a2ec397c8b010a70ecb2109339468652fb3ef5dd2fbdf2217170d66e677ca32"
  version "0.1.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "minna"
    bin.install "minna-core"
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
