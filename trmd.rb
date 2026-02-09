class Trmd < Formula
  include Language::Python::Virtualenv

  desc "Translate Markdown using OpenAI"
  homepage "https://github.com/rioriost/homebrew-trmd/"
  url "https://files.pythonhosted.org/packages/27/da/7954d4a6dc39cf0060f6d7c0e7a4b426978c82c919d50271f16a7685da9f/trmd-0.1.31.tar.gz"
  sha256 "dfd226b2983f64808b4e48aa2825b6f331331fffa0578044eca06ed406d98636"
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
