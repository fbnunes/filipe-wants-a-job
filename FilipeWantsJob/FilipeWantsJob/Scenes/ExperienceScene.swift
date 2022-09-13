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
  
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let sceneOne = GameScene(fileNamed: "GameScene")
        sceneOne?.scaleMode = .aspectFill
        self.view?.presentScene(sceneOne!, transition: SKTransition.fade(withDuration: 0.5))
    }
}

