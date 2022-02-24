//
//  FirebaseFunctions.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 2/24/22.
//

import Foundation
import FirebaseAuth
import FirebaseStorage
import Firebase

struct FirebaseFunctions{
    
    static func signOut(_ userInfo: UserInfo){
            try? Auth.auth().signOut()
            userInfo.loggedin = false
            //signing out can produce an exception --> wrap that code in a try? optional value
        }//end func
        
        static func getAuthenticatedUser(_ userInfo: UserInfo){
            //will notify you if a user is logged in?
            Auth.auth().addStateDidChangeListener { _, user in
                guard let user = user else { return }
                //if user does not exist, just exit
                userInfo.email = user.email ?? ""
                //optional unwrapping ^^
                userInfo.loggedin = true
                
                let uid = user.uid
                
                Firestore.firestore().collection("users").document(uid).getDocument{
                    document, _ in
                    guard let document = document else {return}
                    
                    let imageURL = document.get("image") as? String ?? ""
                    userInfo.name = document.get("name") as? String ?? ""
                    
                    Storage.storage()
                        .reference(forURL: imageURL)
                        .getData(maxSize: 1 * 1024 * 1024) { data, error in
                            if let imageData = data{
                                userInfo.image = UIImage(data: imageData) ??
                                    UIImage(named: "user")!
                            }//end if
                        }//end closure
                }//end firestore
            }//end auth
        }//end func
        
        //add the users name to the database
        static func addUserName(_ name: String,
                                completion: @escaping (Bool) -> ()){

            guard let uid = Auth.auth().currentUser?.uid else {
                completion(false)
                return
            }
            Firestore.firestore().collection("users").document(uid).setData(["name": name], merge: true)
            
        }//end func
    
    
    static func uploadPicture(_ image: UIImage, completion: @escaping (Bool) -> ()){
        //get a reference to the current user so that we can store their image in a directory that is identified by their uid
        guard let uid = Auth.auth().currentUser?.uid else {
            completion(false)
            return
        }
        
        //get a reference to the storage singleton, specifically pointing to a path in storage that will be identified by their uid. we'll use this singleton to upload the image.
        let storage = Storage.storage().reference().child("users/\(uid)")
        
        //convert our image to imageData because you can't actually just upload an image; it has to be data. the compression quality downsizes the image so that it will use less storage space
        guard let imageData = image.jpegData(compressionQuality: 0.5) else {
            completion(false)
            return
        }
        
        storage.putData(imageData, metadata: StorageMetadata()) { meta, error in
            if let _ = meta{
                storage.downloadURL {url, error in
                    guard let downloadURL = url else {
                        completion(false)
                        return
                    }
                    Firestore.firestore().collection("users").document(uid).setData(["image": downloadURL.absoluteString], merge: true)
                }
            }
        }
    }
    
    static func authenticate(email: String,
                             password: String,
                             completion: @escaping (Bool) -> ()){
        Auth.auth().createUser(withEmail: email, password: password){user, error in
            if let _ = user {
                print("user created")
                completion(true)
            }
            else {
                print(error.debugDescription)
                completion(false)
            }
        }
    }
    
    static func login(email: String,
                      password: String,
                      completion: @escaping (Bool) -> ()){
        Auth.auth().signIn(withEmail: email, password: password) { user, error in
            if let _ = user {
                print("logged in")
                completion(true)
            }
            else {
                print(error.debugDescription)
                completion(false)
            }
        }
    }
    
    static func forgotPassword(email: String,
                               completion: @escaping (Bool) -> ()){
        Auth.auth().sendPasswordReset(withEmail: email) { error in
            if let err = error {
                print(err.localizedDescription)
                completion(false)
            }
            else {
                completion(true)
            }
        }
    }
    
}

