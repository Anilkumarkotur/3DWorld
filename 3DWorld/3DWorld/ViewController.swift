//
//  ViewController.swift
//  3DWorld
//
//  Created by Anilkumar kotur on 10/03/18.
//  Copyright © 2018 GoJek. All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.intialSetUp()
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func intialSetUp()  {
        let scene = SCNScene()

        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0,y: 0, z: 5)
        
        scene.rootNode.addChildNode(cameraNode)
        
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .omni
        lightNode.position = SCNVector3(x: 0,y: 10, z: 2)
        
        scene.rootNode.addChildNode(lightNode)
        let sceneView = self.view as! SCNView
        sceneView.scene = scene
    
        if let stars = SCNParticleSystem(named: "StarParticles.scnp", inDirectory: nil) {
            scene.rootNode.addParticleSystem(stars)
        }
        
        let earthNode = EarthNode()
        scene.rootNode.addChildNode(earthNode)
        //To see statistics
        sceneView.showsStatistics = true
        sceneView.backgroundColor = .black
        
        //To enable camera features
        sceneView.allowsCameraControl = true
        

    }
    
    func setUpCamera()  {
    }
    
}

