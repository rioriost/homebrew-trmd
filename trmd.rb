class Trmd < Formula
  include Language::Python::Virtualenv

  desc "Translate Markdown using OpenAI"
  homepage "https://github.com/rioriost/homebrew-trmd/"
  url "https://files.pythonhosted.org/packages/f0/0b/83ac4e8c47452a30af473b621ba86a16f5facff25645c5fb38ee0f01cb7c/trmd-0.1.29.tar.gz"
  sha256 "8e8239b50483f1025987153e89cdd629b585ee8397d6075a269a42724c46b5c6"
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
