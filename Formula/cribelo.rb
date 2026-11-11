class Cribelo < Formula
  desc "Ranks the files of a pull request by how much they need a human reader"
  homepage "https://github.com/cribelo/cribelo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cribelo/cribelo/releases/download/v2.3.0/cribelo_Darwin_arm64"
      sha256 "ab20b19badcacc5c55d67b8b3c3134c9e0b894258e5ad6c3583cb5dda82d21fe"
    end
    on_intel do
      url "https://github.com/cribelo/cribelo/releases/download/v2.3.0/cribelo_Darwin_x86_64"
      sha256 "a5cb5b5e0c0caa63041a003e2b8283595601cecd556008e945f9c95b36f00e87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cribelo/cribelo/releases/download/v2.3.0/cribelo_Linux_arm64"
      sha256 "f8c3d3557c037ce0e33bbac326d1155254b6f91945f5ddae879668c0e0fbf466"
    end
    on_intel do
      url "https://github.com/cribelo/cribelo/releases/download/v2.3.0/cribelo_Linux_x86_64"
      sha256 "4194ce7ed226670988c7cc60e6cbb0dd943260e575d35498ad871f9b721f306f"
    end
  end

  def install
    bin.install Dir["cribelo_*"].first => "cribelo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cribelo --version")
  end
end
