# Written by clview's release workflow (.github/homebrew-formula.sh): an edit here goes with the next release.
class Clv < Formula
  desc "View PDFs, images, documents, spreadsheets and archives in the terminal"
  homepage "https://github.com/dobladez/clview"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/dobladez/clview/releases/download/v0.3.0/clv-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "02ee337a569702b08f8e21bb5dce8d1558759c2d46f247e8d54e5bb0980d5a1a"
    end
    on_intel do
      url "https://github.com/dobladez/clview/releases/download/v0.3.0/clv-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "c38aca06344de3f210b583fb085033767ee3242ee9a591731885c7e5b1dacb2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dobladez/clview/releases/download/v0.3.0/clv-0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "05a027b091d0c2a8b435108078253f18cb31b010e1cad097a412f3469b91c8d2"
    end
    on_intel do
      url "https://github.com/dobladez/clview/releases/download/v0.3.0/clv-0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9106079cf1486e5210b185e72788aa63bbbd3f6923d237b80b6149677bb62e9b"
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
