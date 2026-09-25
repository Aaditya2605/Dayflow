import XCTest

@testable import Dayflow

final class RecordingPrivacyPreferencesTests: XCTestCase {
  func testInstalledApplicationsIncludesSafari() {
    // /Applications/Safari.app is a hidden symlink into the system Cryptex.
    let bundleIDs = RecordingPrivacyPreferences.installedApplications().map(\.bundleIdentifier)
    XCTAssertTrue(bundleIDs.contains("com.apple.Safari"))
  }
}
