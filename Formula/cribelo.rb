class Cribelo < Formula
  desc "Ranks the files of a pull request by how much they need a human reader"
  homepage "https://github.com/cribelo/cribelo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cribelo/cribelo/releases/download/v2.0.1/cribelo_Darwin_arm64"
      sha256 "69589e260d2127e03eb718ff15b0a13f4487a9144cd83c54864cf6eb2c91a09e"
    end
    on_intel do
      url "https://github.com/cribelo/cribelo/releases/download/v2.0.1/cribelo_Darwin_x86_64"
      sha256 "21889f2821b94f5f483f189c9916d644f7cc961c116be8f59cd7da6ac5188454"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cribelo/cribelo/releases/download/v2.0.1/cribelo_Linux_arm64"
      sha256 "9637e01c7e695ffc28115c88246d7dd863944b543cecec3f7a2c3fd0cf3ef80e"
    end
    on_intel do
      url "https://github.com/cribelo/cribelo/releases/download/v2.0.1/cribelo_Linux_x86_64"
      sha256 "da25721e693374e0e7eb852fd73319549f5a844fd8ef2ec4a04fee32214a7580"
    end
  end

  def install
    bin.install Dir["cribelo_*"].first => "cribelo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cribelo --version")
  end
end
