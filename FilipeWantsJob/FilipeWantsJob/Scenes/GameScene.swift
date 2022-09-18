//
//  GameScene.swift
//  FilipeWantsJob
//
//  Created by ffflip on 07/09/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
//    let playableRect: CGRect
//
//    var lastUpdateTime: TimeInterval = 0
//    var dt: TimeInterval = 0
//
//    var lastTouchLocation: CGPoint?
//
//    let zombie = SKSpriteNode(imageNamed: "character")
//    let zombieMovePointsPerSec: CGFloat = 480.0
//    var velocity = CGPoint.zero
//    let zombieRotateRadiansPerSec:CGFloat = 4.0 * π
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
//    override init(size: CGSize) {
//      let maxAspectRatio:CGFloat = 16.0/9.0
//      let playableHeight = size.width / maxAspectRatio
//      let playableMargin = (size.height-playableHeight)/2.0
//      
//      playableRect = CGRect(x: 0, y: playableMargin,
//                            width: size.width, height: playableHeight)
//      super.init(size: size)
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//      fatalError("init(coder:) has not been implemented")
//    }
    
    override func didMove(to view: SKView) {
        self.backgroundColor = SKColor.white
        
        // Get label node from scene and store it for use later
        self.label = self.childNode(withName: "//helloLabel") as? SKLabelNode
        if let label = self.label {
            label.alpha = 0.0
            label.run(SKAction.fadeIn(withDuration: 2.0))
        }
        
        // Create shape node to use during mouse interaction
        let w = (self.size.width + self.size.height) * 0.05
        self.spinnyNode = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
        
        if let spinnyNode = self.spinnyNode {
            spinnyNode.lineWidth = 2.5
            
            spinnyNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1)))
            spinnyNode.run(SKAction.sequence([SKAction.wait(forDuration: 0.5),
                                              SKAction.fadeOut(withDuration: 0.5),
                                              SKAction.removeFromParent()]))
        }
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.green
            self.addChild(n)
        }
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.blue
            self.addChild(n)
        }
    }
    
    func touchUp(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.red
            self.addChild(n)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        let sceneTwo = MapScene(fileNamed: "MapScene")
        sceneTwo?.scaleMode = .aspectFill
        self.view?.presentScene(sceneTwo!, transition: SKTransition.fade(withDuration: 0.5))
        
        if let label = self.label {
            label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
        }
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
//    override func update(_ currentTime: TimeInterval) {
//        // Called before each frame is rendered
//    }
//    
//    func moveZombieToward(_ location: CGPoint) {
//      let offset = location - zombie.position
//      let direction = offset.normalized()
//      velocity = direction * zombieMovePointsPerSec
//    }
//    
//    func rotateSprite(_ sprite: SKSpriteNode, direction: CGPoint, rotateRadiansPerSec: CGFloat) {
//      let shortest = shortestAngleBetween(angle1: sprite.zRotation, angle2: velocity.angle)
//      let amountToRotate = min(rotateRadiansPerSec * CGFloat(dt), abs(shortest))
//      sprite.zRotation += shortest.sign() * amountToRotate
//    }
//    
//    func moveSprite(_ sprite: SKSpriteNode, velocity: CGPoint) {
//      let amountToMove = velocity * CGFloat(dt)
//      print("Amount to move: \(amountToMove)")
//      sprite.position += amountToMove
//    }
//    
//    func boundsCheckZombie() {
//      let bottomLeft = CGPoint(x: playableRect.minX, y: playableRect.minY)
//      let topRight = CGPoint(x: playableRect.maxX, y: playableRect.maxY)
//      
//      if zombie.position.x <= bottomLeft.x {
//        zombie.position.x = bottomLeft.x
//        velocity.x = -velocity.x
//      }
//      if zombie.position.x >= topRight.x {
//        zombie.position.x = topRight.x
//        velocity.x = -velocity.x
//      }
//      if zombie.position.y <= bottomLeft.y {
//        zombie.position.y = bottomLeft.y
//        velocity.y = -velocity.y
//      }
//      if zombie.position.y >= topRight.y {
//        zombie.position.y = topRight.y
//        velocity.y = -velocity.y
//      }
//    }
//    
//    override func update(_ currentTime: TimeInterval) {
//      if lastUpdateTime > 0 {
//        dt = currentTime - lastUpdateTime
//      } else {
//        dt = 0
//      }
//      lastUpdateTime = currentTime
//      print("\(dt*1000) milliseconds since last update")
//      
//      // moveSprite(zombie, velocity: CGPoint(x: zombieMovePointsPerSec, y: 0))
//      if let lastTouchLocation = lastTouchLocation {
//        let diff = lastTouchLocation - zombie.position
//        if (diff.length() <= zombieMovePointsPerSec * CGFloat(dt)) {
//          zombie.position = lastTouchLocation
//          velocity = CGPoint.zero
//        } else {
//          moveSprite(zombie, velocity: velocity)
//          rotateSprite(zombie, direction: velocity, rotateRadiansPerSec: zombieRotateRadiansPerSec)
//        }
//      }
//      
//      boundsCheckZombie()
//    }
//    
    
}

