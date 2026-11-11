# Written by clview's release workflow (.github/homebrew-formula.sh): an edit here goes with the next release.
class Clv < Formula
  desc "View PDFs, images, documents, spreadsheets and archives in the terminal"
  homepage "https://github.com/dobladez/clview"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/dobladez/clview/releases/download/v0.4.0/clv-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "e7724dfa7efe6e367423b50a439a5763efef1864ef2ea182b3a7129d0921fe58"
    end
    on_intel do
      url "https://github.com/dobladez/clview/releases/download/v0.4.0/clv-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "4b1a540956eed8f6756a42ca3e2e43df0a006594d906fc6405ee11854dfdbe0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dobladez/clview/releases/download/v0.4.0/clv-0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "645d4507f6a680f09374d26139696e4f2eac66394145c3728288ba588ec9babe"
    end
    on_intel do
      url "https://github.com/dobladez/clview/releases/download/v0.4.0/clv-0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "82bd6149f8255b1f94e097c3708f1c9d7c41914eb2e27d27251a3cc17f7623c9"
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
