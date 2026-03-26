class Cot < Formula
  desc "Write like TypeScript, run like Rust, deploy anywhere"
  homepage "https://github.com/cotlang/cot"
  version "0.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cotlang/cot/releases/download/v0.3.9/cot-aarch64-macos.tar.gz"
      sha256 "bff7685f075be8c16273f014767f6646c1d4e80df0f2c5cfb428f766f2f2e46d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cotlang/cot/releases/download/v0.3.9/cot-x86_64-linux.tar.gz"
      sha256 "8a60d09f5ddc0c21dba6651976a868c49e11150e510c0486c353ece050827754"
    end
    on_arm do
      url "https://github.com/cotlang/cot/releases/download/v0.3.9/cot-aarch64-linux.tar.gz"
      sha256 "62515554d3f44dfd02f475f24f21906190c79d39d827e908936c990b7c9785d4"
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
