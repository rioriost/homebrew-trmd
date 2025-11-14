class Trmd < Formula
  include Language::Python::Virtualenv

  desc "Translate Markdown using OpenAI"
  homepage "https://github.com/rioriost/homebrew-trmd/"
  url "https://files.pythonhosted.org/packages/d3/01/6d4b59298093baa3be7c691c39f77045ab72f36545cb49531773cb4a2e9e/trmd-0.1.26.tar.gz"
  sha256 "f99324bb798db2df6712878d5a92b72f65becc7b0bac7ccf8fc390592f63c159"
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
