class Awake < Formula
  desc "Keep your Mac awake even with the lid closed"
  homepage "https://github.com/tanabee/awake"
  url "https://github.com/tanabee/awake/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "83798a369d726402ffd373593c6d0d9ade8747927762872829c08f991725bdee"
  license "MIT"
  head "https://github.com/tanabee/awake.git", branch: "main"

  depends_on :macos

  def install
    bin.install "bin/awake"
  end

  test do
    assert_match "keep the Mac awake", shell_output("#{bin}/awake --help")
  end
end
