import Foundation
import UIKit

class FlashTabBarController: UITabBarController {
    var tintColor: UIColor
    var backgroundColor: UIColor
    var tabbarItems: [TabbarItem]
    
    init(tintColor: UIColor, backgroundColor: UIColor, tabbarItems: [TabbarItem]) {
        self.tintColor = tintColor
        self.backgroundColor = backgroundColor
        self.tabbarItems = tabbarItems
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure(tintColor: tintColor, backgroundColor: backgroundColor, tabbarItems: tabbarItems)
    }
    
    func configure(tintColor: UIColor, backgroundColor: UIColor, tabbarItems: [TabbarItem]) {
        self.tabBar.tintColor = tintColor
        tabBar.backgroundColor = backgroundColor
        
        var viewControllers = [UIViewController]()
        
        tabbarItems.forEach { item in
            guard let vc = item.VC else { return }
            vc.tabBarItem = UITabBarItem(title: item.title, image: item.image, selectedImage: item.selectedImage)
            let navController = UINavigationController(rootViewController: vc)
            viewControllers.append(navController)
        }
        self.viewControllers = viewControllers
    }
}