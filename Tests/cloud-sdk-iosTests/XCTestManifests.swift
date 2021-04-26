import XCTest

#if !canImport(ObjectiveC)
    public func allTests() -> [XCTestCaseEntry] {
        return [
            testCase(cloud_sdk_iosTests.allTests),
        ]
    }
#endif
