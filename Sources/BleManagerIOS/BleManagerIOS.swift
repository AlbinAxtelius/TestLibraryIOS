public struct BleManagerIOS {
    public private(set) var text = "Hello, World!"

    public init() {
    }
	
	private var coolTemplate: String = "{NAME} is very cool"
	
	public func getCoolWithName(name: String) -> String {
		return coolTemplate.split(separator: " ").map({ subString -> Substring in
			if subString == "{NAME}" { return Substring(name) }
			return subString
		}).joined(separator: " ")
	}
}
