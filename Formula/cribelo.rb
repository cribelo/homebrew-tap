class Cribelo < Formula
  desc "Ranks the files of a pull request by how much they need a human reader"
  homepage "https://github.com/cribelo/cribelo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cribelo/cribelo/releases/download/v1.1.2/cribelo_Darwin_arm64"
      sha256 "c2663779164fce451e5dcfd7c73ab5cc1dd5874c58e12407120e949d7eb77c1d"
    end
    on_intel do
      url "https://github.com/cribelo/cribelo/releases/download/v1.1.2/cribelo_Darwin_x86_64"
      sha256 "9ea47fd32c0f170bbb9b193b5aad23b12bb6bfa3b51916f0f0868cf36a6e9693"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cribelo/cribelo/releases/download/v1.1.2/cribelo_Linux_arm64"
      sha256 "e5cc365f8e478de4227faf30b3cce6c8dfa189cbb12a70b9ddc50588dbb065a8"
    end
    on_intel do
      url "https://github.com/cribelo/cribelo/releases/download/v1.1.2/cribelo_Linux_x86_64"
      sha256 "1912edeb2ee1daa160d7f10478b165a387dc6faa2b91599e065cd50f57d5a82c"
    end
  end

  def install
    bin.install Dir["cribelo_*"].first => "cribelo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cribelo --version")
  end
end
