//
//  MapScene.swift
//  FilipeWantsJob
//
//  Created by ffflip on 07/09/22.
//

import Foundation
import SpriteKit

class MapScene: SKScene {
    
    override func didMove(to view: SKView) {
        self.backgroundColor = SKColor.green
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let sceneOne = GameScene(fileNamed: "GameScene")
        sceneOne?.scaleMode = .aspectFit
        self.view?.presentScene(sceneOne!, transition: SKTransition.fade(withDuration: 0.5))
    }
}
