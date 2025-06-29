class Eir < Formula
  desc "EXIF-based image renamer and RAW format converter"
  homepage "https://github.com/alexbigkid/eir"
  version "0.3.3"
  url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
  sha256 "70cf9b048f9ab279e511f242aa27cf39484fd08a8719663582ea3437ce217511"

  depends_on "exiftool"

  def install
    bin.install "eir-#{version}-macos-universal" => "eir"
  end

  test do
    system "#{bin}/eir", "--version"
  end
end
