class Cribelo < Formula
  desc "Ranks the files of a pull request by how much they need a human reader"
  homepage "https://github.com/cribelo/cribelo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cribelo/cribelo/releases/download/v2.1.0/cribelo_Darwin_arm64"
      sha256 "762048879ed14ef998f04a5365dd5cbdebdb82ec8dc1b3f7778f9e3dc0cc3838"
    end
    on_intel do
      url "https://github.com/cribelo/cribelo/releases/download/v2.1.0/cribelo_Darwin_x86_64"
      sha256 "080629423690163fcc23589035a998412b23d0dd2f08af610e15420b0588621b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cribelo/cribelo/releases/download/v2.1.0/cribelo_Linux_arm64"
      sha256 "1403c2580ed9092c465152e085fd08ae46bf7efdccd22572498ad7524726c0c5"
    end
    on_intel do
      url "https://github.com/cribelo/cribelo/releases/download/v2.1.0/cribelo_Linux_x86_64"
      sha256 "643c53787edf57a0131d8b25bc9f4b50fe8f464517d7aef7f5ca5c24bd21fe0e"
    end
  end

  def install
    bin.install Dir["cribelo_*"].first => "cribelo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cribelo --version")
  end
end
