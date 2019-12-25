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

    
    var playerNameA = "AAA"
    var playerNameB = "BBB"
        
    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }
    

    func test0Initial() {
        
        let tennis = Tennis(playerNameA, playerNameB);
        
        XCTAssertNotNil(tennis)
        XCTAssert(tennis.playerA == playerNameA)
        XCTAssert(tennis.playerB == playerNameB)
    }
    
    
    
    func test1NoDeuce(){
        let tennis = Tennis(playerNameA, playerNameB);
        
        XCTAssertNotNil(tennis)
        XCTAssert(tennis.playerA == playerNameA)
        XCTAssert(tennis.playerB == playerNameB)
        
        XCTAssert(tennis.score(playerNameA) == "")
        XCTAssert(tennis.score(playerNameA) == "")
        XCTAssert(tennis.score(playerNameB) == "")
        XCTAssert(tennis.score(playerNameB) == "")
    }
    
    func test2Deuce(){
        
        let tennis = Tennis(playerNameA, playerNameB);
        
        XCTAssertNotNil(tennis)
        XCTAssert(tennis.playerA == playerNameA)
        XCTAssert(tennis.playerB == playerNameB)
        
        XCTAssert(tennis.score(playerNameA) == "")
        XCTAssert(tennis.score(playerNameA) == "")
        XCTAssert(tennis.score(playerNameB) == "")
        XCTAssert(tennis.score(playerNameB) == "")
        
    }
    
    func test3Adv(){
        
    }
    
    func test4Win(){
        
    }
    
}
TennisTests.defaultTestSuite.run()
