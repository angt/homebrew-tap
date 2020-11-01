class Glorytun < Formula
  desc "Multipath UDP tunnel"
  homepage "https://github.com/angt/glorytun"
  license "BSD-2-Clause"
  url "https://github.com/angt/glorytun/releases/download/v0.3.4/glorytun-0.3.4.tar.gz"
  sha256 "137d9c525a05bb605163df0465367d36e943715ca773ce43d5ea66f0597600a3"
  depends_on "libsodium"

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/glorytun", "version"
  end
end
