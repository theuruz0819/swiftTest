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
        
        if(playerName == playerA){
            scoreA = scoreA + 1
        } else if(playerName == playerB){
            scoreB = scoreB + 1
        }
        
        if scoreA == scoreB && scoreA >= 3 {
            return "Deuce"
        }
        
        if(scoreA > 3 || scoreB > 3){
            if(scoreA > scoreB){
                if(abs(scoreA - scoreB) == 1){
                    return playerA + " Adv"
                }
            } else {
                if(abs(scoreA - scoreB) == 1){
                    return playerB + " Adv"
                }
            }
        }
        
        let scoreMessageA = getScoreMessage(scoreA)
        let scoreMessageB = getScoreMessage(scoreB)
        
        if scoreMessageA != scoreMessageB {
            return scoreMessageA + " " + scoreMessageB
        } else {
            return scoreMessageB + " All"
        }
                
    }
    
    func getScoreMessage(_ scoreInt : Int) -> String{
        switch scoreInt {
        case 0:
            return "Love"
        case 1:
            return "Fifteen"
        case 2:
            return "Thirty"
        case 3:
            return "Forty"
        default:
            return ""
        }
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
        
        XCTAssert(tennis.score(playerNameA) == "Fifteen Love")
        tennis.score(playerNameA)
        
        XCTAssert(tennis.score(playerNameB) == "Thirty Fifteen")
        XCTAssert(tennis.score(playerNameB) == "Thirty All")
        XCTAssert(tennis.score(playerNameB) == "Thirty Forty")
    }
    
    func test2Deuce(){
        let tennis = Tennis(playerNameA, playerNameB);

        tennis.score(playerNameA)
        tennis.score(playerNameA)
        tennis.score(playerNameB)
        tennis.score(playerNameB)
        tennis.score(playerNameA)
        XCTAssert(tennis.score(playerNameB) == "Deuce")
        XCTAssertFalse(tennis.score(playerNameB) == "Deuce")
        XCTAssert(tennis.score(playerNameA) == "Deuce")
        XCTAssertFalse(tennis.score(playerNameB) == "Deuce")
        XCTAssertFalse(tennis.score(playerNameB) == "Deuce")

    }
    
    func test3Adv(){
        let tennis = Tennis(playerNameA, playerNameB);
        
        tennis.score(playerNameA)
        tennis.score(playerNameA)
        tennis.score(playerNameB)
        tennis.score(playerNameB)
        tennis.score(playerNameA)
        tennis.score(playerNameB)
        XCTAssert(tennis.score(playerNameB) == "BBB Adv")
        tennis.score(playerNameA)
        XCTAssert(tennis.score(playerNameA) == "AAA Adv")
    }
}
TennisTests.defaultTestSuite.run()
