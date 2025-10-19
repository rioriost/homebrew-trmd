class Trmd < Formula
  include Language::Python::Virtualenv

  desc "Translate Markdown using OpenAI"
  homepage "https://github.com/rioriost/homebrew-trmd/"
  url "https://files.pythonhosted.org/packages/06/1f/b95471ee833620845e03e354f288eed47d2c197342332f9d201c62c69d52/trmd-0.1.23.tar.gz"
  sha256 "d90e4f045638cc1e0ea204bc4eae4a3bb8e94b81588d142898284510dc4a0bf2"
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
