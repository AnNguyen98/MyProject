

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]?) -> Bool {
        // Override point for customization after application launch.
        
        return true
    }
    
    override func responds(to aSelector: Selector) -> Bool {
        print(aSelector)
        return super.responds(to: aSelector)
    }


}

