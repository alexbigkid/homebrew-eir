class Eir < Formula
  desc "EXIF-based image renamer and RAW format converter"
  homepage "https://github.com/alexbigkid/eir"
  version "0.1.49"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
      sha256 "fe6472934737ec07e912bff2d9b32f41a011791a195a65be821089b298f2f3c3"
    else
      url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
      sha256 "fe6472934737ec07e912bff2d9b32f41a011791a195a65be821089b298f2f3c3"
    end
  end

  def install
    bin.install "eir-#{version}-macos-universal" => "eir"
  end

  test do
    system "#{bin}/eir", "--version"
  end
end