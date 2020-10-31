class Secret < Formula
  desc "Tiny secret store to keep your little secrets"
  homepage "https://github.com/angt/secret"
  license "BSD-2-Clause"
  head "https://github.com/angt/secret.git"

  stable do
    url "https://github.com/angt/secret.git",
      tag: "v0.11"
  end

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/secret", "version"
  end
end
