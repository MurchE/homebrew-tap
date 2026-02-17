class Heyclaude < Formula
  desc "Terminal interface to Claude AI (Anthropic)"
  homepage "https://github.com/MurchE/HeyClaude"
  url "https://github.com/MurchE/HeyClaude/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "" # We'll fill this after creating the release
  license "MIT"

  depends_on "jq"
  depends_on "curl"

  def install
    bin.install "heyclaude"
  end

  def caveats
    <<~EOS
      To use heyclaude, you need an Anthropic API key.

      Get your key from: https://console.anthropic.com/

      Then add to your shell profile (~/.bashrc or ~/.zshrc):
        export ANTHROPIC_API_KEY="sk-ant-..."

      Reload your shell:
        source ~/.bashrc

      Usage:
        heyclaude "your question here"
    EOS
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/heyclaude 2>&1", 1)
  end
end
