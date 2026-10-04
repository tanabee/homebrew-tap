class Awake < Formula
  desc "Keep your Mac awake even with the lid closed"
  homepage "https://github.com/tanabee/awake"
  url "https://github.com/tanabee/awake/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b5f0c199cd246debd091fd3a6f026494399775c375856b71228e8de864e5307f"
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
