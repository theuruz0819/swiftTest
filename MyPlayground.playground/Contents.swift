import XCTest

struct Todo {
    
}

class TodoTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }
    
    func testTodo() {
        XCTAssertNotNil(Todo())
    }
  
}
TodoTests.defaultTestSuite.run()
