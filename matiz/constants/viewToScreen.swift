import SwiftUI

func viewForScreenName(_ screenName: String) -> AnyView {
    switch screenName {
    case "carsScreen":
        return AnyView(carsScreen())
    case "featuredCarsScreen":
        return AnyView(featuredCarsScreen())
    case "motoScreen":
        return AnyView(motoScreen())
    case "detailsScreen":
        return AnyView(detailsScreen())
    case "commericalsScreen":
        return AnyView(commericalsScreen())
    case "servicesScreen":
        return AnyView(servicesScreen())
    case "shipsScreen":
        return AnyView(shipsScreen())
    case "guideScreen":
        return AnyView(guideScreen())
    default:
        return AnyView(Text("Screen not found"))
    }
}
