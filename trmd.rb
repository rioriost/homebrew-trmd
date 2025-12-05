class Trmd < Formula
  include Language::Python::Virtualenv

  desc "Translate Markdown using OpenAI"
  homepage "https://github.com/rioriost/homebrew-trmd/"
  url "https://files.pythonhosted.org/packages/64/27/b30279e5790885a8e8a6df5a182a3b90badc00070775343f59fa3f029cc0/trmd-0.1.28.tar.gz"
  sha256 "9bd1e57c8c39fc5a634a36830d801ca084d8a4ffe90504aaee0cc0512f7ca1d7"
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
