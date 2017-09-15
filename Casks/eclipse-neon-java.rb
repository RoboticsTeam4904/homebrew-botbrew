cask 'eclipse-neon-java' do
  version '4.6.3'
  sha256 '886bc0d38a1cb9c3fab17d6f4a9f28266763894e690e1bcce9098ca65cbf1a77'

  url 'http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/3/eclipse-java-neon-3-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse IDE (Neon) for Java Developers'
  homepage 'https://eclipse.org/neon/'
  license :eclipse

  depends_on cask: 'java'
  depends_on macos: '>= 10.10'
  depends_on arch: :x86_64

  app 'Eclipse.app'

  zap delete: [
    '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.eclipse.platform.ide.sfl',
    '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.eclipse.platform.ide.sfl',
    '~/Library/Preferences/org.eclipse.platform.ide.plist'
  ]
end
