class Secret < Formula
  desc "A tiny secret store to keep your little secrets"
  homepage "https://github.com/angt/secret"
  license "BSD-2-Clause"

  stable do
    url "https://github.com/angt/secret.git",
      tag: "v0.10"
  end

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/secret", "version"
  end
end
