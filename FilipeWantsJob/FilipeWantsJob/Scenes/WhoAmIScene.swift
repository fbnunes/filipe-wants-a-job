//
//  WhoAmIScene.swift
//  FilipeWantsJob
//
//  Created by ffflip on 13/09/22.
//

import Foundation
import SpriteKit


class WhoAmIScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    
    
    override func didMove(to view: SKView) {
        self.backgroundColor = SKColor.orange
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let sceneOne = GameScene(fileNamed: "GameScene")
        sceneOne?.scaleMode = .aspectFill
        self.view?.presentScene(sceneOne!, transition: SKTransition.fade(withDuration: 0.5))
    }
}
