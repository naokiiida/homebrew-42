# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Norminette < Formula
  include Language::Python::Virtualenv

  desc "Official 42 norminette"
  homepage "https://github.com/42School/norminette"
  url "https://files.pythonhosted.org/packages/32/7d/a7bd0a9eab47b0e23874996d62bc9af39328b7e9e939f29340330d56f4c5/norminette-3.3.55.tar.gz"
  sha256 "66356de519fdd361043ea1473ea5317b6087ce60c9f1f2fb172aaf3f7fcfe98c"
  license "MIT"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test norminette`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    test = testpath/"test.c"
    test.write.("#include <stdio.h>")
    output = shell_output("#{bin}/norminette #{}")
#    system "#{bin}/norminette"
#    assert_equal "test.c: Error!
#Error: INVALID_HEADER       (line:   1, col:   1):	Missing or invalid 42 header", (testpath/"test.c").read.chomp
  end
end
