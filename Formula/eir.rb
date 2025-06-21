class Eir < Formula
  desc "EXIF-based image renamer and RAW format converter"
  homepage "https://github.com/alexbigkid/eir"
  version "0.1.54"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
      sha256 "b0f777a94e58436b09a4f0f9dd50fa41bff27256c89f098568891427f6843dbd"
    else
      url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
      sha256 "b0f777a94e58436b09a4f0f9dd50fa41bff27256c89f098568891427f6843dbd"
    end
  end

  def install
    bin.install "eir-#{version}-macos-universal" => "eir"
  end

  test do
    system "#{bin}/eir", "--version"
  end
end