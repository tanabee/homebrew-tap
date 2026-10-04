class Awake < Formula
  desc "Keep your Mac awake even with the lid closed"
  homepage "https://github.com/tanabee/awake"
  url "https://github.com/tanabee/awake/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "1ccac9e3d7bd6c3070469b0c9b0499b85bc265b73f93812297e0126075ad3dbd"
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
