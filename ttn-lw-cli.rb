# This file was generated by GoReleaser. DO NOT EDIT.
class TtnLwCli < Formula
  desc "CLI of The Things Stack for LoRaWAN"
  homepage "https://www.thethingsnetwork.org"
  version "3.2.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/rvolosatovs/lorawan-stack/releases/download/v3.2.1/lorawan-stack-cli_3.2.1_darwin_amd64.tar.gz"
    sha256 "b0e8353b5e6ae9b2d86890ace47ad50a92d7f1cdf2302f1b4b4eccb4c1379266"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/rvolosatovs/lorawan-stack/releases/download/v3.2.1/lorawan-stack-cli_3.2.1_linux_amd64.tar.gz"
      sha256 "662d8ba82795dbd9d4e90641b8073c72a79e319b2e64351fa6fd325f572ab302"
    end
  end
  
  conflicts_with "ttn-lw-stack"

  def install
    bin.install "ttn-lw-cli"
    libexec.install doc
  end
end
