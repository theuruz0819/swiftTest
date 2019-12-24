import XCTest

class Tennis {
    var playerA : String
    var scoreA : Int
    var playerB : String
    var scoreB : Int
    
    init(_ playerA : String, _ playerB : String) {
        self.playerA = playerA
        self.scoreA = 0
        self.playerB = playerB
        self.scoreB = 0
    }
    
    func score(_ playerName: String) -> String{
        return "";
    }
}

class TennisTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }
    
    func testTodoInitial() {
        
        var teness = Tennis("AAA","BBB")
        
        XCTAssertNotNil(teness)
        XCTAssert(teness.playerA == "AAA")
        XCTAssert(teness.playerB == "BBB")
    }
  
}
TennisTests.defaultTestSuite.run()
