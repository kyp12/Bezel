//
//  PhotoExportTestViewController.swift
//  Bezel
//
//  Created by David on 10/29/14.
//  Copyright (c) 2014 learnswift. All rights reserved.
//

import UIKit
import Photos

class PhotoExportTestViewController: UIViewController
{

    @IBOutlet weak var imageView: UIImageView!
    
    let albumName = "Bezel Test"
    var assetCollection: PHAssetCollection!
    var photoAsset: PHFetchResult!
    var albumFound = false
    
    var currentImage = UIImage(named: "road.jpg")
    
    
    
    lazy var currentShape : Shape = {
        let defaultColor = UIColor.blackColor()
        let defaultSize = CGSize(width: 640, height: 640)
        let defaultShapeInfo = [ "shapeName" : "Anchor", "overlayImage" : "anchor_black", "previewImage" : "anchor" ]
        return Shape(color: defaultColor, size: defaultSize, info: defaultShapeInfo)
        }()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let fetchOptions = PHFetchOptions()
        // Looks for specfic album name
        fetchOptions.predicate = NSPredicate(format:"title = %@", albumName)
        
        let collection = PHAssetCollection.fetchAssetCollectionsWithType(PHAssetCollectionType.Album, subtype: PHAssetCollectionSubtype.Any, options: fetchOptions)
        
        if (collection.firstObject != nil)
        {
            // found the album name
            self.albumFound = true
            self.assetCollection = collection.firstObject as PHAssetCollection
        }
        else
        {
            // create the album folder
            println("\\Folder\\\(self.albumName) does not exist... Creating now...")
            PHPhotoLibrary.sharedPhotoLibrary().performChanges({
                let request = PHAssetCollectionChangeRequest.creationRequestForAssetCollectionWithTitle(self.albumName)
                
                }, completionHandler: { (success, error) -> Void in
                    println("Creation of folder -> \(self.albumName)")
                    if (success)
                    {
                        println("Finished")
                        self.albumFound = true

                    }
                    else
                    {
                        println(error)
                    }
                    
                    
            })
        }
        
        
        self.currentShape.fillColor = UIColor.blueColor()
//        self.currentImage = self.currentShape.imageWithBackground(self.currentShape.overlayImage, backgroundColor: nil, originalImage: self.currentImage!)
        self.imageView.image = self.currentImage

    }


    @IBAction func saveButtonPressed(sender: UIButton)
    {
        // Adding asset to album
        PHPhotoLibrary.sharedPhotoLibrary().performChanges({
            let createAssetRequest = PHAssetChangeRequest.creationRequestForAssetFromImage(self.currentImage)
            
            let assetPlaceholder = createAssetRequest.placeholderForCreatedAsset
            let albumChangeRequest = PHAssetCollectionChangeRequest(forAssetCollection: self.assetCollection, assets: self.photoAsset)
            albumChangeRequest.addAssets([assetPlaceholder])
            
        },
        completionHandler: { (success, error) -> Void in
            if (success)
            {
                println("Adding Image to Library -> ")
            }
            else
            {
                println(error)
            }
        })
    }
    
    @IBAction func addMaskButtonPressed(sender: UIButton)
    {
        self.imageView.image = self.currentShape.imageWithBackground(self.currentShape.overlayImage, backgroundColor: nil, originalImage: self.currentImage!)
    }



}
