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
    
    @IBOutlet var panGester: UIPanGestureRecognizer!
    
    let albumName = "Bezel Test"
    var assetCollection: PHAssetCollection!
    var photoAsset: PHFetchResult!
    var albumFound = false
    
    var currentImage = UIImage(named: "road.jpg")
    var overlayImage = UIImage(named: "circle_black.svg")
    var filteredImage: UIImage?
    
    // CoreImage Test
    var context: CIContext!
    var filter: CIFilter!
    var beginImage: CIImage!
    
    
    lazy var currentShape : Shape = {
        let defaultColor = UIColor.blackColor()
        let defaultSize = CGSize(width: 640, height: 640)
        let defaultShapeInfo = [ "shapeName" : "Circle", "overlayImage" : "circle_black", "previewImage" : "circle" ]
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
            // create the album folder for the app
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
        
        // Creates a CIIContext
//        self.beginImage = CIImage(image: self.currentImage)
        
        // Creates a CIIFilter
//        self.filter = CIFilter(name: "CISepiaTone")
//        self.filter.setValue(beginImage, forKey: kCIInputImageKey)
//        self.filter.setValue(0.5, forKeyPath: kCIInputIntensityKey)
//        
//        let outputImage = filter.outputImage
        
        // Setting uo the CIContext obj the option is for CPU or GPU
//        self.context = CIContext(options: nil)
//        let cgimg = self.context.createCGImage(filter.outputImage, fromRect: filter.outputImage.extent())
//        
//        let newImage = UIImage(CGImage: cgimg)
//        self.filteredImage = UIImage(CGImage: cgimg)
//        self.imageView.image = newImage
        
        //self.newImage = self.currentShape.imageWithBackground(self.currentShape.overlayImage, backgroundColor: nil, originalImage: self.currentImage!) as UIImage!
        
        //self.imageView.image = newImage


//        var compositeFilter = CIFilter(name: "CIBlendWithAlphaMask")
//        compositeFilter.setValue(CIImage(CGImage: self.currentImage?.CGImage), forKey: kCIInputImageKey)
//        compositeFilter.setValue(CIImage(CGImage: self.currentShape.overlayImage.CGImage), forKey: kCIInputMaskImageKey)
//        var compositeImage = compositeFilter.outputImage
//        
//        self.context = CIContext(options: nil)
//        let cgimg = self.context.createCGImage(compositeFilter.outputImage, fromRect: compositeFilter.outputImage.extent())
//        
//        var maskedImage = UIImage(CGImage: cgimg)
//        self.filteredImage = UIImage(CGImage: cgimg)
        self.filteredImage = self.currentShape.imageWithBackground(self.currentShape.overlayImage, backgroundColor: nil, originalImage: self.currentImage!)
        self.imageView.image = self.filteredImage

        
        


    }


    @IBAction func saveButtonPressed(sender: UIButton)
    {
        self.saveImage(self.filteredImage!)
    }
    
    @IBAction func addMaskButtonPressed(sender: UIButton)
    {
        
        self.imageView.image = self.currentShape.imageWithBackground(self.currentShape.overlayImage, backgroundColor: nil, originalImage: self.currentImage!)
        
    }
    
    func saveImage(image: UIImage)
    {
        // Adding asset to album
        PHPhotoLibrary.sharedPhotoLibrary().performChanges({
            let createAssetRequest = PHAssetChangeRequest.creationRequestForAssetFromImage(image)
            
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
                    println("ERROR: \(error)")
                }
        })
    }



}
