


[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
[![AGPL License](https://img.shields.io/badge/license-AGPL-blue.svg)](http://www.gnu.org/licenses/agpl-3.0)
# Flash UITabBarController

A Swift package that provides a customizable UITabBarController implementation, FlashTabBarController, along with a supporting struct, TabbarItem, to configure the tab bar items.

# Installation
You can install the FlashTabBarController package using Swift Package Manager. Simply add the package as a dependency in your Package.swift file:
```bash
  dependencies: [
    .package(url: "https://github.com/mrtctns/FlashTabBar.git", from: "1.0.0")
],

```
# Usage
1. Import the FlashTabBarController package:
```bash
import FlashTabBar
```
2. Create an instance of FlashTabBarController with your desired configuration:
```bash
let tintColor = UIColor.blue
let backgroundColor = UIColor.white

let item1 = TabbarItem(VC: FirstViewController(), title: "First", image: UIImage(named: "first"), selectedImage: UIImage(named: "first_selected"))
let item2 = TabbarItem(VC: SecondViewController(), title: "Second", image: UIImage(named: "second"), selectedImage: UIImage(named: "second_selected"))

let tabbarItems = [item1, item2]

let tabBarController = FlashTabBarController(tintColor: tintColor, backgroundColor: backgroundColor, tabbarItems: tabbarItems)

```
3. Set the FlashTabBarController instance as the root view controller of your app:
```bash
window?.rootViewController = tabBarController
window?.makeKeyAndVisible()
```
# License
This package is released under the MIT License. See [LICENSE](https://github.com/your/repository/blob/main/LICENSE) for more information.

## 🚀 About Me

[My Website](https://mrtctns.github.io/)
