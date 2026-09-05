class Chop < Formula
  desc "Safely inspect and remove Git worktrees"
  homepage "https://github.com/alberto-castano/chop"
  url "https://github.com/alberto-castano/chop/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "f537a3474001f69b0caee2885d82d285dc430f445375426102658ba79ad7d758"
  license "MIT"
  head "https://github.com/alberto-castano/chop.git", branch: "main"

  depends_on "rust" => :build

  def fetch
    system "cargo", "fetch", "--locked"
  end

  def install
    system "cargo", "install", "--offline", *std_cargo_args
  end

  test do
    assert_match "chop #{version}", shell_output("#{bin}/chop --version")
  end
end
