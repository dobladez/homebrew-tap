# Written by clview's release workflow (.github/homebrew-formula.sh): an edit here goes with the next release.
class Clv < Formula
  desc "View PDFs, images, documents, spreadsheets and archives in the terminal"
  homepage "https://github.com/dobladez/clview"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/dobladez/clview/releases/download/v0.5.0/clv-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "c6cc334b892b38c585c1ba4f2c3836519c8266d1f42f70842702c9fb18c5b3fb"
    end
    on_intel do
      url "https://github.com/dobladez/clview/releases/download/v0.5.0/clv-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "d9b9182a4a41862a6349fd331824433a1df16beccec1f51e750c3b5b5c3fdf4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dobladez/clview/releases/download/v0.5.0/clv-0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b0722aba18ac9056d4341193377bd9c7105fda5c221a01e2f1628497ed04e6d8"
    end
    on_intel do
      url "https://github.com/dobladez/clview/releases/download/v0.5.0/clv-0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ea5886b24a5dc95ee81ca4c1cba94c7aabfd9c04ed5847e643d545bb2d3c2c44"
    end
  end

  def install
    bin.install "clv"
    doc.install "README.md", "docs/usage.md"
  end

  test do
    assert_match "clv #{version}", shell_output("#{bin}/clv --version")
  end
end
