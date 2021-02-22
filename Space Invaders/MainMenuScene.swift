//
//  MainMenuScene.swift
//  Space Invaders
//
//  Created by Jose Fausto on 2/20/21.
//

import Foundation
import SpriteKit

class MainaMenuScene: SKScene{
    
    override func didMove(to view: SKView) {
        
        let background = SKSpriteNode(imageNamed: "background2")
        background.size = self.size
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        
        let gameBy = SKLabelNode(fontNamed: "MaskedHeroDemo")
        gameBy.text = "Jose Fausto's"
        gameBy.fontSize = 50
        gameBy.fontColor = SKColor.white
        gameBy.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.78)
        gameBy.zPosition = 1
        self.addChild(gameBy)
        
        let gameName1 = SKLabelNode(fontNamed: "MaskedHeroDemo")
        gameName1.text = "Seek N"
        gameName1.fontSize = 160
        gameName1.fontColor = SKColor.white
        gameName1.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.7)
        gameName1.zPosition = 1
        self.addChild(gameName1)
        
        let gameName2 = SKLabelNode(fontNamed: "MaskedHeroDemo")
        gameName2.text = "Destroy"
        gameName2.fontSize = 170
        gameName2.fontColor = SKColor.white
        gameName2.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.625)
        gameName2.zPosition = 1
        self.addChild(gameName2)
        
        let startGameLabel = SKLabelNode(fontNamed: "MaskedHeroDemo")
        startGameLabel.text = "Start Game"
        startGameLabel.fontSize = 130
        startGameLabel.fontColor = SKColor.white
        startGameLabel.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.4)
        startGameLabel.zPosition = 1
        startGameLabel.name = "startButton"
        self.addChild(startGameLabel)
        
        // For finding font name
//        for family: String in UIFont.familyNames {
//                print("\(family)")
//                for names: String in UIFont.fontNames(forFamilyName: family) {
//                    print("== \(names)")
//                }
//            }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch: AnyObject in touches{
            let pointOfTouch = touch.location(in: self)
            let nodeITapped = atPoint(pointOfTouch)
            
            if nodeITapped.name == "startButton"{
                let sceneToMoveTo = GameScene(size: self.size)
                sceneToMoveTo.scaleMode = self.scaleMode
                let myTransition = SKTransition.fade(withDuration: 0.5)
                self.view!.presentScene(sceneToMoveTo, transition: myTransition)
            }
        }
    }
    
}
