class Cribelo < Formula
  desc "Ranks the files of a pull request by how much they need a human reader"
  homepage "https://github.com/cribelo/cribelo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cribelo/cribelo/releases/download/v2.4.0/cribelo_Darwin_arm64"
      sha256 "04fbdaa85e2d5a835e25a04d432a98c0f70bd5bb6bc23ecf7161b549d0d78d42"
    end
    on_intel do
      url "https://github.com/cribelo/cribelo/releases/download/v2.4.0/cribelo_Darwin_x86_64"
      sha256 "10aa4ee710aa970878d20f4831f6146eb73933fc60d7d1cddb3f597072b93e82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cribelo/cribelo/releases/download/v2.4.0/cribelo_Linux_arm64"
      sha256 "69818b4bab7a358edd075eb54a1229635a52697d9ea399fdc445b067340ab77c"
    end
    on_intel do
      url "https://github.com/cribelo/cribelo/releases/download/v2.4.0/cribelo_Linux_x86_64"
      sha256 "b61524fb9c1480e155c5db2ab0973f36fd531756afaa366d0d6be626c36ab013"
    end
  end

  def install
    bin.install Dir["cribelo_*"].first => "cribelo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cribelo --version")
  end
end
