import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
	return [
		testCase(LogEntryTests.allTests),
		testCase(LogSeverityComparisonTests.allTests),
	]
}
#endif
