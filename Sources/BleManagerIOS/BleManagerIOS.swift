import RxSwift

public struct BleManagerIOS {
	public private(set) var text = "Hello, World!"
	
	private var disposeBag = DisposeBag()
	private var subject = PublishSubject<Int>()
	
	public init() {
		subject
			.subscribe({ print($0) })
			.disposed(by: disposeBag)
	}
	
	private var coolTemplate: String = "{NAME} is very cool"
	
	public func getCoolWithName(name: String) -> String {
		return coolTemplate.split(separator: " ").map({ subString -> Substring in
			if subString == "{NAME}" { return Substring(name) }
			return subString
		}).joined(separator: " ")
	}
	
	public func next(int: Int) {
		subject.onNext(int)
	}
}
