class Todoterm < Formula
  desc "✨ The most beautiful CLI todo list manager for your terminal!"
  homepage "https://github.com/wilihandarwo/todoterm"
  url "https://registry.npmjs.org/todoterm/-/todoterm-1.0.1.tgz"
  sha256 "2705791aec63e5480ced0f8ad2c3b97e4d6f62a12d81dbba61767118da80c22e"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # Test that the binary exists and can show help
    assert_match "TodoTerm", shell_output("#{bin}/todoterm --help")
  end
end
