class Totp < Formula
  desc "Tiny command line utility to generate OTP tokens"
  homepage "https://github.com/angt/totp"
  license "BSD-2-Clause"
  head "https://github.com/angt/totp.git"

  stable do
    url "https://github.com/angt/totp.git",
      tag: "v0.1"
  end

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/totp", "version"
  end
end
