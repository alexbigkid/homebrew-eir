class Eir < Formula
  desc "EXIF-based image renamer and RAW format converter"
  homepage "https://github.com/alexbigkid/eir"
  version "0.3.7"
  url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
  sha256 "226bc5482ac77ef17985d4e6fb1bc2d375be403d5907cc94b716d3ed424de04f"

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
