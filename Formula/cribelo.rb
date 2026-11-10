class Cribelo < Formula
  desc "Ranks the files of a pull request by how much they need a human reader"
  homepage "https://github.com/cribelo/cribelo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cribelo/cribelo/releases/download/v2.2.0/cribelo_Darwin_arm64"
      sha256 "718a1ccc24b2e93ccaf0e844cfc73d4c22904142218aa859d403fe78bd13d9ea"
    end
    on_intel do
      url "https://github.com/cribelo/cribelo/releases/download/v2.2.0/cribelo_Darwin_x86_64"
      sha256 "b3c5acbec2b3e100b7d948b88dcad9353c49411697447241f924aad4638b7175"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cribelo/cribelo/releases/download/v2.2.0/cribelo_Linux_arm64"
      sha256 "2516ca80ff0725bbdd9f13e3bf5cba91eb37b9a0c4b2daab3201d0b1ae425e51"
    end
    on_intel do
      url "https://github.com/cribelo/cribelo/releases/download/v2.2.0/cribelo_Linux_x86_64"
      sha256 "b807ee95478cd1be4645b0ea6ce62f19db947c9d7d2d14a231a9bd2f71b5d8c7"
    end
  end

  def install
    bin.install Dir["cribelo_*"].first => "cribelo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cribelo --version")
  end
end
