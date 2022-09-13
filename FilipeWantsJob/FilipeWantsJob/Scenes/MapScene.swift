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
    
    private var awardsBtn: SKLabelNode?
    private var educationBtn: SKLabelNode?
    private var experienceBtn: SKLabelNode?
    private var languagesBtn: SKLabelNode?
    private var linksBtn: SKLabelNode?
    private var whoAmIBtn: SKLabelNode?
    
    private var awardsBalloon: SKLabelNode?
    private var educationBalloon: SKLabelNode?
    private var experienceBalloon: SKLabelNode?
    private var languagesBalloon: SKLabelNode?
    private var linksBalloon: SKLabelNode?
    private var whoAmIBalloon: SKLabelNode?
    
    private var awardsLabel: SKLabelNode?
    private var educationLabel: SKLabelNode?
    private var experienceLabel: SKLabelNode?
    private var languagesLabel: SKLabelNode?
    private var linksLabel: SKLabelNode?
    private var whoAmILabel: SKLabelNode?
    
    override func didMove(to view: SKView) {
        self.backgroundColor = SKColor.white

        self.awardsBtn = self.childNode(withName: "//awardBtn") as? SKLabelNode
        self.educationBtn = self.childNode(withName: "//educationBtn") as? SKLabelNode
        self.experienceBtn = self.childNode(withName: "//experienceBtn") as? SKLabelNode
        self.languagesBtn = self.childNode(withName: "//languagesBtn") as? SKLabelNode
        self.linksBtn = self.childNode(withName: "//linksBtn") as? SKLabelNode
        self.whoAmIBtn = self.childNode(withName: "//whoAmIBtn") as? SKLabelNode
        
        self.awardsBalloon = self.childNode(withName: "//awardBalloon") as? SKLabelNode
        self.educationBalloon = self.childNode(withName: "//educationBalloon") as? SKLabelNode
        self.experienceBalloon = self.childNode(withName: "//experienceBalloon") as? SKLabelNode
        self.languagesBalloon = self.childNode(withName: "//languagesBalloon") as? SKLabelNode
        self.linksBalloon = self.childNode(withName: "//linksBalloon") as? SKLabelNode
        self.whoAmIBalloon = self.childNode(withName: "//whoAmIBalloon") as? SKLabelNode
        
        self.awardsLabel = self.childNode(withName: "//awardsLabel") as? SKLabelNode
        self.educationLabel = self.childNode(withName: "//educationLabel") as? SKLabelNode
        self.experienceLabel = self.childNode(withName: "//experienceLabel") as? SKLabelNode
        self.languagesLabel = self.childNode(withName: "//languagesLabel") as? SKLabelNode
        self.linksLabel = self.childNode(withName: "//linksLabel") as? SKLabelNode
        self.whoAmILabel = self.childNode(withName: "//whoAmILabel") as? SKLabelNode
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches {
            let node = self.atPoint(t.location(in :self))
            
            if (node.name == "awardsBtn" || node.name == "awardsLabel" || node.name == "awardsBalloon") {
                let sceneOne = AwardsScene(fileNamed: "AwardsScene")
                sceneOne?.scaleMode = .aspectFill
                self.view?.presentScene(sceneOne!, transition: SKTransition.fade(withDuration: 0.5))
            }
            
            if (node.name == "educationBtn" || node.name == "educationBalloon" || node.name == "educationLabel") {
                let sceneOne = EducationScene(fileNamed: "EducationScene")
                sceneOne?.scaleMode = .aspectFill
                self.view?.presentScene(sceneOne!, transition: SKTransition.fade(withDuration: 0.5))
            }
            
            if (node.name == "experienceBtn" || node.name == "experienceBalloon" || node.name == "experienceLabel") {
                let sceneOne = ExperienceScene(fileNamed: "ExperienceScene")
                sceneOne?.scaleMode = .aspectFill
                self.view?.presentScene(sceneOne!, transition: SKTransition.fade(withDuration: 0.5))
            }
            
            if (node.name == "languagesBtn" || node.name == "languagesBalloon" || node.name == "languagesLabel") {
                let sceneOne = LanguagesScene(fileNamed: "LanguagesScene")
                sceneOne?.scaleMode = .aspectFill
                self.view?.presentScene(sceneOne!, transition: SKTransition.fade(withDuration: 0.5))
            }
            
            if (node.name == "linksBtn" || node.name == "linksBalloon" || node.name == "linksLabel") {
                let sceneOne = LinksScene(fileNamed: "LinksScene")
                sceneOne?.scaleMode = .aspectFill
                self.view?.presentScene(sceneOne!, transition: SKTransition.fade(withDuration: 0.5))
            }
            
            if (node.name == "whoAmIBtn" || node.name == "whoAmIBalloon" || node.name == "whoAmILabel") {
                let sceneOne = WhoAmIScene(fileNamed: "WhoAmIScene")
                sceneOne?.scaleMode = .aspectFill
                self.view?.presentScene(sceneOne!, transition: SKTransition.fade(withDuration: 0.5))
            }
            
          }
    }
}
