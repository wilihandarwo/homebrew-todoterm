class Todoterm < Formula
  desc "✨ The most beautiful CLI todo list manager with project management for your terminal!"
  homepage "https://github.com/wilihandarwo/todoterm"
  url "https://registry.npmjs.org/todoterm/-/todoterm-2.0.0.tgz"
  sha256 "8643768cce44d7f708775233aa3c63d1db8a7693623f59b9aa25f9df1a5dc972"
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
