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
        
        scene.rootNode.addChildNode(cameraNode)
        
        let sceneView = self.view as! SCNView
        sceneView.scene = scene
    
        //To see statistics
        sceneView.showsStatistics = true
        sceneView.backgroundColor = .black
        
        //To enable camera features
        sceneView.allowsCameraControl = true
        

    }
    
    func setUpCamera()  {
    }
    
}

