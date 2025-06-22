class Eir < Formula
  desc "EXIF-based image renamer and RAW format converter"
  homepage "https://github.com/alexbigkid/eir"
  version "0.1.63"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
      sha256 "4cf4a6028bdc8e2ffeec01050f2446dcc4c4ef5cdc2dbc98ccfbd6b0d59ff8c4"
    else
      url "https://github.com/alexbigkid/eir/releases/download/v#{version}/eir-#{version}-macos-universal"
      sha256 "4cf4a6028bdc8e2ffeec01050f2446dcc4c4ef5cdc2dbc98ccfbd6b0d59ff8c4"
    end
  end

  def install
    bin.install "eir-#{version}-macos-universal" => "eir"
  end

  test do
    system "#{bin}/eir", "--version"
  end
end
