import Foundation

class MainScene: CCScene {
    override init!() {
        super.init()
    }
    
    func freehand() {
        let freehandScene = CCBReader.load(asScene: "FreehandScene")
        let transition = CCDefaultTransition.transitionMoveIn(with: .up, duration: 0.4)
        CCDirector.shared().replace(freehandScene, with: transition)
    }
    
    func about() {
        let freehandScene = CCBReader.load(asScene: "AboutScene")
        let transition = CCDefaultTransition.transitionMoveIn(with: .up, duration: 0.4)
        CCDirector.shared().replace(freehandScene, with: transition)
    }

}
