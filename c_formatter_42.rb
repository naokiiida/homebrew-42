# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CFormatter42 < Formula
  include Language::Python::Virtualenv

  desc ""
  homepage ""
  url "https://files.pythonhosted.org/packages/b8/29/8cb9e92e65e462e5344cfde7607e1576839b3978235ba47d63276c9b1332/c_formatter_42-0.2.7.tar.gz"
  sha256 "89e3edb7761f7461af03852e4f0ff3a00ffaec6fd83786810e1fae149bce20f2"
  license ""

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test c_formatter_42`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
