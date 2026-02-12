class Trmd < Formula
  include Language::Python::Virtualenv

  desc "Translate Markdown using OpenAI"
  homepage "https://github.com/rioriost/homebrew-trmd/"
  url "https://files.pythonhosted.org/packages/07/3a/130c465cf672de1b024accd67fd3c3b456ff3e071ac9c8c38e4cc3352cd4/trmd-0.1.32.tar.gz"
  sha256 "50c7ee604faf171b211738ae8b11b3f733f72fc78431b70f751a810d04efcc69"
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
