class Eir < Formula
  desc "EXIF-based image renamer and RAW format converter"
  homepage "https://github.com/alexbigkid/eir"
  version "0.3.9"
  url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
  sha256 "5635bdaca40020744d8fb1494f7fbfcba5332936d8ff4a689eee01be3980d39b"

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
