//
//  TabbarItem.swift
//  
//
//  Created by Mert Çetin on 4.07.2023.
//

import Foundation
import UIKit

public class TabbarItem {
    public let VC: UIViewController?
    public let title: String?
    public let image: UIImage?
    public let selectedImage: UIImage?
    
    public init(VC: UIViewController?, title: String?, image: UIImage?, selectedImage: UIImage?) {
        self.VC = VC
        self.title = title
        self.image = image
        self.selectedImage = selectedImage
    }
}
