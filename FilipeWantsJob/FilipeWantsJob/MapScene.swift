//
//  MapScene.swift
//  FilipeWantsJob
//
//  Created by ffflip on 07/09/22.
//

import Foundation
import SpriteKit


class MapScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    private var awardBtn: SKLabelNode?
    private var educationBtn: SKLabelNode?
    private var experienceBtn: SKLabelNode?
    private var languagesBtn: SKLabelNode?
    private var linksBtn: SKLabelNode?
    private var whoAmIBtn: SKLabelNode?
    
    private var awardBalloon: SKLabelNode?
    private var educationBalloon: SKLabelNode?
    private var experienceBalloon: SKLabelNode?
    private var languagesBalloon: SKLabelNode?
    private var linksBalloon: SKLabelNode?
    private var whoAmIBalloon: SKLabelNode?
    
    
    
    override func didMove(to view: SKView) {
        self.backgroundColor = SKColor.white
        
//        self.label = self.childNode(withName: "//awardBtn") as? SKLabelNode
//        self.label = self.childNode(withName: "//educationBtn") as? SKLabelNode
//        if let label = self.label {
//            label.alpha = 0.0
//            label.run(SKAction.fadeIn(withDuration: 2.0))
//        }
        
        self.awardBtn = self.childNode(withName: "//awardBtn") as? SKLabelNode
        self.educationBtn = self.childNode(withName: "//educationBtn") as? SKLabelNode
        self.educationBtn = self.childNode(withName: "//experienceBtn") as? SKLabelNode
        self.educationBtn = self.childNode(withName: "//languagesBtn") as? SKLabelNode
        self.educationBtn = self.childNode(withName: "//linksBtn") as? SKLabelNode
        self.educationBtn = self.childNode(withName: "//whoAmIBtn") as? SKLabelNode
        
        self.educationBtn = self.childNode(withName: "//awardBalloon") as? SKLabelNode
        self.educationBtn = self.childNode(withName: "//educationBalloon") as? SKLabelNode
        self.educationBtn = self.childNode(withName: "//experienceBalloon") as? SKLabelNode
        self.educationBtn = self.childNode(withName: "//languagesBalloon") as? SKLabelNode
        self.educationBtn = self.childNode(withName: "//linksBalloon") as? SKLabelNode
        self.educationBtn = self.childNode(withName: "//whoAmIBalloon") as? SKLabelNode
        
        
//        guard let uiImage = UIImage(named: "IMG_2832.PNG") else { return }
//          let ciImage = CIImage(image: uiImage)
        
//        let imageView = UIImageView(frame: CGRect(x: 150, y: 150, width: 1220, height: 1220))
//          imageView.image = UIImage(named: "IMG_2832.PNG")
////        imageView.image?.ciImage?.samplingNearest()
//        self.view?.addSubview(imageView)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches {
            let node = self.atPoint(t.location(in :self))
            
            if (node.name == "awardBtn") {
                print("award was clicked")
                
            }
            
            if (node.name == "educationBtn") {
                print("education was clicked")
                
            }
            
            if (node.name == "experienceBtn") {
                print("experience was clicked")
                
            }
            
            if (node.name == "languagesBtn") {
                print("languages was clicked")
                
            }
            
            if (node.name == "linksBtn") {
                print("links was clicked")
                
            }
            
            if (node.name == "whoAmIBtn") {
                print("whoAmI was clicked")
                
            }
            
            if (node.name == "awardBalloon") {
                print("awardBalloon was clicked")
                
            }
            
            if (node.name == "educationBalloon") {
                print("educationBalloon was clicked")
                
            }
            
            if (node.name == "experienceBalloon") {
                print("experienceBalloon was clicked")
                
            }
            
            if (node.name == "languagesBalloon") {
                print("languagesBalloon was clicked")
                
            }
            
            if (node.name == "linksBalloon") {
                print("linksBalloon was clicked")
                
            }
            
            if (node.name == "whoAmIBalloon") {
                print("whoAmIBalloon was clicked")
                
            }
            
          }
        let sceneOne = GameScene(fileNamed: "GameScene")
        sceneOne?.scaleMode = .aspectFill
        self.view?.presentScene(sceneOne!, transition: SKTransition.fade(withDuration: 0.5))
    }
}
