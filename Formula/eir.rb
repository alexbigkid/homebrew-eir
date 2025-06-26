class Eir < Formula
  desc "EXIF-based image renamer and RAW format converter"
  homepage "https://github.com/alexbigkid/eir"
  version "0.2.0"
  url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
  sha256 "b776b90d913c0297f9f3852861275bda3326157f0849e6cb1641e2c815f7f654"

  depends_on "exiftool"
  depends_on cask: "adobe-dng-converter"

  def install
    bin.install "eir-#{version}-macos-universal" => "eir"
  end

  test do
    system "#{bin}/eir", "--version"
  end
end
