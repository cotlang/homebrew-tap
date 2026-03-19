class Cot < Formula
  desc "Write like TypeScript, run like Rust, deploy anywhere"
  homepage "https://github.com/cotlang/cot"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cotlang/cot/releases/download/v0.3.7/cot-aarch64-macos.tar.gz"
      sha256 "5f30980804c12c73250fce86a27ace6757c7ddb2256c8a20fed8dd38419ad981"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cotlang/cot/releases/download/v0.3.7/cot-x86_64-linux.tar.gz"
      sha256 "83385eefadaeaafe7c0445125e49886604052afe3eaf19eb387f8008f869e9a2"
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
