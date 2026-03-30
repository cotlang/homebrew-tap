class Cot < Formula
  desc "Write like TypeScript, run like Rust, deploy anywhere"
  homepage "https://github.com/cotlang/cot"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cotlang/cot/releases/download/v0.4.1/cot-aarch64-macos.tar.gz"
      sha256 "b7263f7b4f770a4814a44a848c9e9f794df488f90b4c73958d9025c2dcc52c28"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cotlang/cot/releases/download/v0.4.1/cot-x86_64-linux.tar.gz"
      sha256 "8d7ef7e0d4010e78c526c84ab0ac1e467dee4020d6a5fe4d7c5a28db02c76a06"
    end
    on_arm do
      url "https://github.com/cotlang/cot/releases/download/v0.4.1/cot-aarch64-linux.tar.gz"
      sha256 "c24078103ce4329a25d0ee57e32362425c1493b60dcc3d6bfa576765a75352b5"
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
