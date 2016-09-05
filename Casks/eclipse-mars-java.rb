cask 'eclipse-mars-java' do
  version '4.5.2'
  sha256 'ecb79ad20548d65643d6c1b24992f900c7192cf8f3c54a1b38ed575835f2a6fe'

  url 'http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/2/eclipse-java-mars-2-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse IDE (Mars) for Java Developers'
  homepage 'https://eclipse.org/mars/'
  license :eclipse

  depends_on cask: 'java'
  depends_on macos: '>= 10.10'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end
