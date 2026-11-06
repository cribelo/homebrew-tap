class Cribelo < Formula
  desc "Ranks the files of a pull request by how much they need a human reader"
  homepage "https://github.com/cribelo/cribelo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cribelo/cribelo/releases/download/v1.1.1/cribelo_Darwin_arm64"
      sha256 "a17167f2554a2841920858b27dd42a81a4f131c18e9652ad1175265950097c81"
    end
    on_intel do
      url "https://github.com/cribelo/cribelo/releases/download/v1.1.1/cribelo_Darwin_x86_64"
      sha256 "2f5b7b8c2cb646c00e744c4688f20b709a7838105539715d9b70674bc8ee90e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cribelo/cribelo/releases/download/v1.1.1/cribelo_Linux_arm64"
      sha256 "7584798aadf09cb8c542be7d56808de10cd106a8d9b9ee9181760977680e25f4"
    end
    on_intel do
      url "https://github.com/cribelo/cribelo/releases/download/v1.1.1/cribelo_Linux_x86_64"
      sha256 "374d9d321c712677d25468d2f8dd725c1cff1431e84ab64bdda7ede3cdcf0b2e"
    end
  end

  def install
    bin.install Dir["cribelo_*"].first => "cribelo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cribelo --version")
  end
end
