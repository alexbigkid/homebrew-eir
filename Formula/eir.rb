class Eir < Formula
  desc "EXIF-based image renamer and RAW format converter"
  homepage "https://github.com/alexbigkid/eir"
  version "0.3.8"
  url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
  sha256 "5e0bb4b0883e3e60310c0f380e6f902b2bb717650b9bbe95e6d1d8c9a0c91b34"

  depends_on "exiftool"

  def install
    bin.install "eir-#{version}-macos-universal" => "eir"
  end

  def caveats
    <<~EOS
      This formula requires Adobe DNG Converter for RAW to DNG conversion on macOS.
      Install it with:
        brew install --cask adobe-dng-converter
    EOS
  end

  test do
    system "#{bin}/eir", "--version"
  end
end
