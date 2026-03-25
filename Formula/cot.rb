class Cot < Formula
  desc "Write like TypeScript, run like Rust, deploy anywhere"
  homepage "https://github.com/cotlang/cot"
  version "0.3.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cotlang/cot/releases/download/v0.3.8/cot-aarch64-macos.tar.gz"
      sha256 "5c4985e4241c9ec607715f4c70a7cbddc2404340de14b199e6e50c55d5045f1f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cotlang/cot/releases/download/v0.3.8/cot-x86_64-linux.tar.gz"
      sha256 "7e8dc9cef57a585a01ef3a71e0a84e5f61356276be217ab2c49443406d1328ff"
    end
    on_arm do
      url "https://github.com/cotlang/cot/releases/download/v0.3.8/cot-aarch64-linux.tar.gz"
      sha256 "64d4eea1b16ead501d6504656c53a6ce7edf46f651427c563a21e8474685ccbd"
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
