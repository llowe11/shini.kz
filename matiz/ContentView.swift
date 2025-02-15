import SwiftUI

struct TabBarControllerWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        return MainTabBarController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let homeVC = UIHostingController(rootView: homescreen())
        homeVC.tabBarItem = UITabBarItem(title: "шины.kz", image: UIImage(systemName: "house.fill"), tag: 0)

        let favouritesVC = UIHostingController(rootView: favouritesScreen())
        favouritesVC.tabBarItem = UITabBarItem(title: "избранное", image: UIImage(systemName: "heart"), tag: 1)

        let addCarVC = UIHostingController(rootView: addcarscreen())
        addCarVC.tabBarItem = UITabBarItem(title: "подать", image: UIImage(systemName: "plus.circle"), tag: 2)

        let messagesVC = UIHostingController(rootView: messagesscreen())
        messagesVC.tabBarItem = UITabBarItem(title: "сообщения", image: UIImage(systemName: "message"), tag: 3)

        let profileVC = UIHostingController(rootView: profilescreen())
        profileVC.tabBarItem = UITabBarItem(title: "кабинет", image: UIImage(systemName: "person.circle.fill"), tag: 4)

        viewControllers = [homeVC, favouritesVC, addCarVC, messagesVC, profileVC]
        tabBar.tintColor = .black
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
