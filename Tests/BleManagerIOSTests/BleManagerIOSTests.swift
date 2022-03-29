import XCTest
@testable import BleManagerIOS

final class BleManagerIOSTests: XCTestCase {
	func testExample() throws {
		XCTAssertEqual(BleManagerIOS().text, "Hello, World!")
	}
	
	func testCoolText() throws {
		XCTAssertEqual(BleManagerIOS().getCoolWithName(name: "Albin"), "Albin is very cool")
	}
}
