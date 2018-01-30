//
//  FileManagerHelper.swift
//  mansnothot
//
//  Created by C4Q on 1/29/18.
//  Copyright © 2018 Melissa He @ C4Q. All rights reserved.
//

import Foundation
import FirebaseAuth
import FirebaseDatabase

//Message by Melissa: this will be used to store any larger data persistently that shouldn't be stored in user defaults
    //like maybe current user??

class FileManagerHelper {
    private init() {}
    static let manager = FileManagerHelper()
    private let fileManager = FileManager.default
    private let currentUserPlist = "currentUser.plist"
    
    private var currentUser: User? {
      didSet {
        //save function goes here
      }
    }
    
    //document directory
    private func documentDirectory() -> URL {
        let urls = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
        return urls[0]
    }
    //data file path
    private func dataFilePath(fileName: String) -> URL {
        return documentDirectory().appendingPathComponent(fileName)
    }
    //to finish
    //load
    
    
    //get - //maybe use this to know what posts to get from firebase??
    public func getCurrentUser() -> User? {
        return currentUser
    }
    
    //save - when saving, it should push changes of current user to firebase??

    //add
    
    //delete??

}
