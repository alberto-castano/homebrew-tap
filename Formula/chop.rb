class Chop < Formula
  desc "Safely inspect and remove Git worktrees"
  homepage "https://github.com/alberto-castano/chop"
  url "https://github.com/alberto-castano/chop/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "ccb9a590a7751d6a5b4221ed8354525809f58b6ef2b2040555de2848105f2278"
  license "MIT"
  head "https://github.com/alberto-castano/chop.git", branch: "main"

  depends_on "rust" => :build

  def fetch
    system "cargo", "fetch", "--locked"
  end

  def install
    ENV["CARGO_NET_OFFLINE"] = "true"
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "chop #{version}", shell_output("#{bin}/chop --version")
  end
end
