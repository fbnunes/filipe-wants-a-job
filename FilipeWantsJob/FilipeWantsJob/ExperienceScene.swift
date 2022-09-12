//
//  ExperienceScene.swift
//  FilipeWantsJob
//
//  Created by ffflip on 12/09/22.
//

import Foundation
import SpriteKit


class ExperienceScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    
    
    override func didMove(to view: SKView) {
        self.backgroundColor = SKColor.green
        print("got to experience")
        
//        self.label = self.childNode(withName: "//awardBtn") as? SKLabelNode
//        self.label = self.childNode(withName: "//educationBtn") as? SKLabelNode
//        if let label = self.label {
//            label.alpha = 0.0
//            label.run(SKAction.fadeIn(withDuration: 2.0))
//        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let sceneOne = GameScene(fileNamed: "GameScene")
        sceneOne?.scaleMode = .aspectFill
        self.view?.presentScene(sceneOne!, transition: SKTransition.fade(withDuration: 0.5))
    }
}

