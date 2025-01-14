cask "omnifocus" do
  on_el_capitan do
    version "2.10"
    sha256 "e808a72e60cdff9ff5aa1046d856bf62d6418e4915248816c4640e32e52fd8e8"

    url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniFocus-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end

    uninstall quit: "com.omnigroup.OmniFocus#{version.major}"
  end
  on_sierra do
    version "2.12.4"
    sha256 "8a2dc53331dba804f6781773fef546a03c181fc4ff0eb7ee4f871c10342621f0"

    url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniFocus-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end

    uninstall quit: "com.omnigroup.OmniFocus#{version.major}"
  end
  on_high_sierra do
    version "3.4.6"
    sha256 "b770b046c2c59f6e55f54d0ad822d5aa755a18aa201d333341de14ebbbcc6a85"

    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniFocus-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end

    uninstall quit: "com.omnigroup.OmniFocus#{version.major}"
  end
  on_mojave do
    version "3.11.7"
    sha256 "21c0a63b6bd8c8ff3e5067f4ccd0ab16c9fd65815a7305e184ed27723bd0aa15"

    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniFocus-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end

    uninstall quit: "com.omnigroup.OmniFocus#{version.major}"
  end
  on_catalina do
    version "3.15.5"
    sha256 "0eb5f04a2ab86e744451c6502c40657b3267d3116fe4ce9e452f90958d13b4be"

    url "https://downloads.omnigroup.com/software/macOS/11/OmniFocus-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end

    uninstall quit: "com.omnigroup.OmniFocus#{version.major}"
  end
  on_big_sur do
    version "3.15.5"
    sha256 "0eb5f04a2ab86e744451c6502c40657b3267d3116fe4ce9e452f90958d13b4be"

    url "https://downloads.omnigroup.com/software/macOS/11/OmniFocus-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end

    uninstall quit: "com.omnigroup.OmniFocus#{version.major}"
  end
  on_monterey do
    version "3.15.5"
    sha256 "0eb5f04a2ab86e744451c6502c40657b3267d3116fe4ce9e452f90958d13b4be"

    url "https://downloads.omnigroup.com/software/macOS/11/OmniFocus-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end

    uninstall quit: "com.omnigroup.OmniFocus#{version.major}"
  end
  on_ventura :or_newer do
    version "4.0.5"
    sha256 "35a91d45ffbc27e9b1f84aa5970d6cebf38423d5bd478a9179433da58f6e8cbf"

    url "https://downloads.omnigroup.com/software/macOS/13/OmniFocus-#{version}.dmg"

    livecheck do
      url "https://www.omnigroup.com/download/latest/omnifocus/"
      strategy :header_match
    end

    uninstall quit: "com.omnigroup.OmniFocus#{version.major}"
  end

  name "OmniFocus"
  desc "Scheduling application focusing on organization"
  homepage "https://www.omnigroup.com/omnifocus/"

  auto_updates true

  app "OmniFocus.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omnifocus#{version}.sfl*",
    "~/Library/Caches/Metadata/com.omnigroup.OmniFocus#{version}",
    "~/Library/Containers/com.omnigroup.OmniFocus#{version}",
    "~/Library/Group Containers/34YW5XSRB7.com.omnigroup.OmniFocus",
    "~/Library/Preferences/com.omnigroup.OmniFocus#{version}.LSSharedFileList.plist",
    "~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist",
    "~/Library/Saved Application State/com.omnigroup.OmniFocus#{version}.savedState",
  ]
end
