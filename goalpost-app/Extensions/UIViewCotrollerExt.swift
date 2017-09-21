//
//  UIViewCotrollerExt.swift
//  goalpost-app
//
//  Created by Aleksandr Shenshin on 21.09.2017.
//  Copyright © 2017 Aleksandr Shenshin. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentDetail(_ viewCotrollerToPresent: UIViewController){
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        self.view.window?.layer.add(transition, forKey: kCATransition)
        present(viewCotrollerToPresent, animated: false, completion: nil)
    }
    
    func dismissDetail(){
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        dismiss(animated: false, completion: nil)
    }
}
