import SwiftUI
import UIKit

struct TabBarControllerWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        return MainTabBarController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.backgroundImage = nil
        tabBar.shadowImage = nil
        tabBar.isTranslucent = false
        tabBar.backgroundColor = .white

    
        tabBarController?.additionalSafeAreaInsets.bottom = -25
        
        let homeVC = UIHostingController(rootView: homescreen())
        homeVC.tabBarItem = UITabBarItem(
            title: "шины.kz",
            image: UIImage(systemName: "house"),
            selectedImage: UIImage(systemName: "house.fill")
        )

        let favouritesVC = UIHostingController(rootView: favouritesScreen())
        favouritesVC.tabBarItem = UITabBarItem(
            title: "избранное",
            image: UIImage(systemName: "heart"),
            selectedImage: UIImage(systemName: "heart.fill")
        )

        let addCarVC = UIHostingController(rootView: addcarscreen())
        addCarVC.tabBarItem = UITabBarItem(
            title: "подать",
            image: UIImage(systemName: "plus.circle"),
            selectedImage: UIImage(systemName: "plus.circle.fill")
        )

        let messagesVC = UIHostingController(rootView: messagesscreen())
        messagesVC.tabBarItem = UITabBarItem(
            title: "сообщения",
            image: UIImage(systemName: "message"),
            selectedImage: UIImage(systemName: "message.fill")
        )

        let profileVC = UIHostingController(rootView: profilescreen())
        profileVC.tabBarItem = UITabBarItem(
            title: "кабинет",
            image: UIImage(systemName: "person.circle"),
            selectedImage: UIImage(systemName: "person.circle.fill")
        )

        viewControllers = [homeVC, favouritesVC, addCarVC, messagesVC, profileVC]
        
        tabBar.tintColor = UIColor.label.withAlphaComponent(0.65)  

    }
}

struct ContentView: View {
    @Environment(\.modelContext) private var context

    var body: some View {
        NavigationView {
            TabBarControllerWrapper()
        }
    }
}

#Preview {
    ContentView()
}
