# Written by clview's release workflow (.github/homebrew-formula.sh): an edit here goes with the next release.
class Clv < Formula
  desc "View PDFs, images, documents, spreadsheets and archives in the terminal"
  homepage "https://github.com/dobladez/clview"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/dobladez/clview/releases/download/v0.6.0/clv-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "3e2806e7a15364f6ff0d35faae7567c631805fc3a2782420fb37aeca8a234da2"
    end
    on_intel do
      url "https://github.com/dobladez/clview/releases/download/v0.6.0/clv-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "18871b4084c3debd960fedd4329306c9d72779ea394c2992a59844afebf32f48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dobladez/clview/releases/download/v0.6.0/clv-0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7c584d4d714f2f80e3269c71f4a7fdbb2b6020d7c4aa3aabc466c8d5e2956ae9"
    end
    on_intel do
      url "https://github.com/dobladez/clview/releases/download/v0.6.0/clv-0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "085acfac139265ffe7e6a890db0108a6d075123c8be9d5cb70020cf52d85faf0"
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
