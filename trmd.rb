class Trmd < Formula
  include Language::Python::Virtualenv

  desc "Translate Markdown using OpenAI"
  homepage "https://github.com/rioriost/homebrew-trmd/"
  url "https://files.pythonhosted.org/packages/8f/e1/7669fe54ed22cbd01f42503ce845c47e96cb2293662c9e226874dac4543c/trmd-0.1.33.tar.gz"
  sha256 "eba335ccaa1d53e3dc6b3fbf8b36d7eebdad6ca237a69e183c99540b437e7f6f"
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
