class Cot < Formula
  desc "Write like TypeScript, run like Rust, deploy anywhere"
  homepage "https://github.com/cotlang/cot"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cotlang/cot/releases/download/v0.3.6/cot-aarch64-macos.tar.gz"
      sha256 "e49b52c69f98c8663fc8a27452d4602832dde40575c9a220cd05b0aeda327601"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cotlang/cot/releases/download/v0.3.6/cot-x86_64-linux.tar.gz"
      sha256 "36fc561bd2d9aaf9f1bb92afa6ada2b2646e037c991f80057bb2eab2e29aa1c4"
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
