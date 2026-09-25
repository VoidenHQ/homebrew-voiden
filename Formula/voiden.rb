class Voiden < Formula
  desc "Build, Test, Document & Collaborate — file-based API client (REST, GraphQL, WebSocket, gRPC)"
  homepage "https://voiden.md"
  url "https://voiden.md/api/download/stable/linux/x64/Voiden-2.3.0.AppImage"
  sha256 "d25ecf80790eee15f13c5e9a136171d359554c2535beddd9106491fbbdea6cd0"
  version "2.3.0"
  license "Apache-2.0"

  depends_on :linux

  def install
    appimage = Dir["*.AppImage"].first
    odie "No .AppImage found in the downloaded artifact" unless appimage
    chmod 0755, appimage
    bin.install appimage => "voiden"
  end

  def caveats
    <<~EOS
      Voiden ships as an AppImage. On some modern kernels (Ubuntu 24.04+,
      Fedora with strict AppArmor userns restrictions), the sandboxed
      Chromium helper needs one of:

        sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0

      ...or run Voiden with --no-sandbox:

        voiden --no-sandbox

      This is a known AppImage/Electron sandboxing limitation, not specific
      to this formula — see https://github.com/VoidenHQ/voiden/issues/43.
    EOS
  end

  test do
    system "#{bin}/voiden", "--version"
  end
end
