class Cribelo < Formula
  desc "Ranks the files of a pull request by how much they need a human reader"
  homepage "https://github.com/cribelo/cribelo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cribelo/cribelo/releases/download/v2.0.0/cribelo_Darwin_arm64"
      sha256 "42c1ef73e0d537fd953417582b4f6b3380e209b122fe3ff099719ca8b84af9e5"
    end
    on_intel do
      url "https://github.com/cribelo/cribelo/releases/download/v2.0.0/cribelo_Darwin_x86_64"
      sha256 "17850233632d168ecebd2082a67275e6653b1552bbf419157e85a0b3f4ed302a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cribelo/cribelo/releases/download/v2.0.0/cribelo_Linux_arm64"
      sha256 "cb426142e5645683e6ce40c1dd62072eb766a4c6103a92dc6841b341c89793b1"
    end
    on_intel do
      url "https://github.com/cribelo/cribelo/releases/download/v2.0.0/cribelo_Linux_x86_64"
      sha256 "721ec0fc9e1bd701afe98125c81911daac38327e0d46d357a22841b0105f387b"
    end
  end

  def install
    bin.install Dir["cribelo_*"].first => "cribelo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cribelo --version")
  end
end
