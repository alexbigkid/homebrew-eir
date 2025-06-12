class Eir < Formula
  desc "EXIF-based image renamer and RAW format converter"
  homepage "https://github.com/alexbigkid/eir"
  version "0.1.42"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
      sha256 "dea6931b35a63582fbcc381cdb32db9b92ad223cd5ebb3b255ece1fad3548b84"
    else
      url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
      sha256 "dea6931b35a63582fbcc381cdb32db9b92ad223cd5ebb3b255ece1fad3548b84"
    end
  end

  def install
    bin.install "eir-#{version}-macos-universal" => "eir"
  end

  test do
    system "#{bin}/eir", "--version"
  end
end