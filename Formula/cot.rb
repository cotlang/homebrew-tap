class Cot < Formula
  desc "Write like TypeScript, run like Rust, deploy anywhere"
  homepage "https://github.com/cotlang/cot"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cotlang/cot/releases/download/v0.4.1/cot-aarch64-macos.tar.gz"
      sha256 "52430f57186838fb902c5ed5461b50c8dbfff62461f4b4f4f049e36163330295"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cotlang/cot/releases/download/v0.4.1/cot-x86_64-linux.tar.gz"
      sha256 "0e0bce2dba5051f4aad989217d9f683510d907378daaf4144e281da01598ec4e"
    end
    on_arm do
      url "https://github.com/cotlang/cot/releases/download/v0.4.1/cot-aarch64-linux.tar.gz"
      sha256 "5c2950610f42efb5f2632ca87d1cdc27a1bf6385d64e6ebedb2d698d8a1c4e40"
    end
  end

  def install
    bin.install "bin/cot"
    (lib/"cot").install "lib/std"
  end

  test do
    assert_match "cot #{version}", shell_output("#{bin}/cot version")
  end
end
