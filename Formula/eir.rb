class Eir < Formula
  desc "EXIF-based image renamer and RAW format converter"
  homepage "https://github.com/alexbigkid/eir"
  version "0.1.43"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
      sha256 "740cc923330cf804cd7c1ef012908f32702335402322d048fa10e93a91875154"
    else
      url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
      sha256 "740cc923330cf804cd7c1ef012908f32702335402322d048fa10e93a91875154"
    end
  end

  def install
    bin.install "eir-#{version}-macos-universal" => "eir"
  end

  test do
    system "#{bin}/eir", "--version"
  end
end