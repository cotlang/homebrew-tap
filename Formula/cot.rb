class Cot < Formula
  desc "Write like TypeScript, run like Rust, deploy anywhere"
  homepage "https://github.com/cotlang/cot"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cotlang/cot/releases/download/v0.4.0/cot-aarch64-macos.tar.gz"
      sha256 "dca71192a08606e42317cde2336b1bfec5e553834d7e024c6dba78d47dc806ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cotlang/cot/releases/download/v0.4.0/cot-x86_64-linux.tar.gz"
      sha256 "1ccafee7caf7fc2a12d41c63a9565828b8f43489e2dc59c630d9001e0597ef2a"
    end
    on_arm do
      url "https://github.com/cotlang/cot/releases/download/v0.4.0/cot-aarch64-linux.tar.gz"
      sha256 "54893b888999fbd10d64b4f3890e3f772d9dc36930bd09968585ec9680aa2c00"
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
