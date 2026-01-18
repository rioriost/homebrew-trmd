class Trmd < Formula
  include Language::Python::Virtualenv

  desc "Translate Markdown using OpenAI"
  homepage "https://github.com/rioriost/homebrew-trmd/"
  url "https://files.pythonhosted.org/packages/96/d3/8d9e326503ba9ff5fa621d8243713dcaed99ea096eec37b818cb75ac1e2f/trmd-0.1.30.tar.gz"
  sha256 "2603b1eb148786efcc8fecb8103c05b625fc534a7cf7265ac57d92cfa2b347aa"
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
