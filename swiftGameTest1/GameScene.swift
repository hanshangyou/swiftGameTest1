//
//  GameScene.swift
//  swiftGameTest1
//
//  Created by runcrow on 14-6-13.
//  Copyright (c) 2014年 runcrow. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var playerNode :SKSpriteNode
    
    init(size: CGSize) {
        super.init(size:size)
        this.playerNode = SKSpriteNode(size:size)
        
    
    
    }
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
//        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
//        myLabel.text = "Hello, World!";
//        myLabel.fontSize = 65;
//        myLabel.position = CGPoint(x:CGRectGetMidX	(self.frame), y:CGRectGetMidY(self.frame));
//        println(self.size)
//        myLabel.position = CGPoint(x: 512, y: 384);
        self.backgroundColor = SKColor()
        
        self.addChild(player)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
