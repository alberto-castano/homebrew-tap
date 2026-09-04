class Chop < Formula
  desc "Safely inspect and remove Git worktrees"
  homepage "https://github.com/alberto-castano/chop"
  url "https://github.com/alberto-castano/chop/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ab33352a805df0b7d8d5b180fb8ce1462e61b0f363889ef2df0d8b2e3fa478d5"
  license "MIT"
  head "https://github.com/alberto-castano/chop.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "chop #{version}", shell_output("#{bin}/chop --version")
  end
end
