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
        self.backgroundColor = SKColor.white
        
//        guard let uiImage = UIImage(named: "IMG_2832.PNG") else { return }
//          let ciImage = CIImage(image: uiImage)
        
        let imageView = UIImageView(frame: CGRect(x: 150, y: 150, width: 1220, height: 1220))
          imageView.image = UIImage(named: "IMG_2832.PNG")
//        imageView.image?.ciImage?.samplingNearest()
        self.view?.addSubview(imageView)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let sceneOne = GameScene(fileNamed: "GameScene")
        sceneOne?.scaleMode = .aspectFit
        self.view?.presentScene(sceneOne!, transition: SKTransition.fade(withDuration: 0.5))
    }
}
