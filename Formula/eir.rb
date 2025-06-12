class Eir < Formula
  desc "EXIF-based image renamer and RAW format converter"
  homepage "https://github.com/alexbigkid/eir"
  version "0.1.45"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
      sha256 "1d3b35ec7714d84a1a1076402cb8455c0149dd3571cd6d1128c164067e998b75"
    else
      url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
      sha256 "1d3b35ec7714d84a1a1076402cb8455c0149dd3571cd6d1128c164067e998b75"
    end
  end

  def install
    bin.install "eir-#{version}-macos-universal" => "eir"
  end

  test do
    system "#{bin}/eir", "--version"
  end
end