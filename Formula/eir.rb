class Eir < Formula
  desc "EXIF-based image renamer and RAW format converter"
  homepage "https://github.com/alexbigkid/eir"
  version "0.3.6"
  url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
  sha256 "952a8af5e4f424deed4f551d5a00db1e5a53a5b369bd582c5beaf900f2038504"

  depends_on "exiftool"
  depends_on cask: "adobe-dng-converter"

  def install
    bin.install "eir-#{version}-macos-universal" => "eir"
  end

  test do
    system "#{bin}/eir", "--version"
  end
end
