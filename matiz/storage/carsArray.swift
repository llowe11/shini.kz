import Foundation
import SwiftData


var carsArray: [carModel] = [
    carModel(brand: "Lexus",
             name: "LC 500",
             date: "30.06.2023",
             mileAge: "9,300 km",
             carImg: "https://images.unsplash.com/photo-1577496549804-8b05f1f67338?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
             isFavorite: false,
             carprice: "51700",
             cardescription: ""),
    carModel(brand: "Audi",
             name: "",
             date: "20.09.2020",
             mileAge: "30,000 km",
             carImg: "https://images.unsplash.com/photo-1520050206274-a1ae44613e6d?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
             isFavorite: false,
             carprice: "42800",
             cardescription: ""),
    carModel(brand: "Toyota",
             name: "Camry 70",
             date: "12.12.2023",
             mileAge: "15,000 km",
             carImg: "https://images.unsplash.com/photo-1621007947382-bb3c3994e3fb?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
             isFavorite: false,
             carprice: "28000",
             cardescription: ""),
    carModel(brand: "Honda",
             name: "Civic 2022",
             date: "05.10.2022",
             mileAge: "18,500 km",
             carImg: "https://images.unsplash.com/photo-1631547891859-184677884115?q=80&w=2650&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
             isFavorite: false,
             carprice: "24500",
             cardescription: ""),
    carModel(brand: "BMW",
             name: "",
             date: "01.08.2021",
             mileAge: "23,000 km",
             carImg: "https://images.unsplash.com/photo-1523983388277-336a66bf9bcd?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
             isFavorite: false,
             carprice: "55000",
             cardescription: ""),
    carModel(brand: "Ford",
             name: "Mustang GT",
             date: "15.03.2024",
             mileAge: "8,200 km",
             carImg: "https://images.unsplash.com/photo-1600138336992-d9fcd4280aa5?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
             isFavorite: false,
             carprice: "45900",
             cardescription: ""),
    carModel(brand: "Mercedes",
             name: "C-Class AMG",
             date: "10.02.2019",
             mileAge: "45,000 km",
             carImg: "https://images.unsplash.com/photo-1652549424460-7543e41ac077?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
             isFavorite: false,
             carprice: "60300",
             cardescription: ""),
    carModel(brand: "Chevrolet",
             name: "Corvette Z06",
             date: "25.11.2023",
             mileAge: "5,700 km",
             carImg: "https://images.unsplash.com/photo-1672151574300-b32db79a42db?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
             isFavorite: false,
             carprice: "15400",
             cardescription: ""),
    carModel(brand: "Nissan",
             name: "Skyline GT-R",
             date: "22.04.2020",
             mileAge: "27,000 km",
             carImg: "https://images.unsplash.com/photo-1655211068611-f495207659c2?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
             isFavorite: false,
             carprice: "70200",
             cardescription: ""),
]
