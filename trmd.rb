class Trmd < Formula
  include Language::Python::Virtualenv

  desc "Translate Markdown using OpenAI"
  homepage "https://github.com/rioriost/homebrew-trmd/"
  url "https://files.pythonhosted.org/packages/ca/10/ddd7edb5491323ee0bdb87b21db719288322464b8f564937ee8c5d039cd5/trmd-0.1.27.tar.gz"
  sha256 "d524b87de7f96d7483257b559562b5d3a73a93bf11a322138914751b77e8b35e"
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
