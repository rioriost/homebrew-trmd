class Trmd < Formula
  include Language::Python::Virtualenv

  desc "Translate Markdown using OpenAI"
  homepage "https://github.com/rioriost/homebrew-trmd/"
  url "https://files.pythonhosted.org/packages/cf/1d/1f648c00f8324696a12480d3c2f4d59be75f0ca1153d14337202789e5f01/trmd-0.1.20.tar.gz"
  sha256 "423182482181fb0b0171238e881dd3fd7997dbc5eb242f500502cd10ffbacf81"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
    system libexec/"bin/python", "-m", "pip", "install", "openai"
  end

  test do
    system "#{bin}/trmd", "--help"
  end
end
