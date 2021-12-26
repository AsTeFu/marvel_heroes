//
//  ContentView.swift
//  marvel-heroes
//
//  Created by drezvanova on 22.12.2021.
//

import SwiftUI
import CollectionViewPagingLayout

struct ContentView: View {
    struct Hero: Identifiable {
        let id: Int
        let name: String
        let image: String
    }
    
    let heroes = [
        Hero(id: 1, name: "Deadpool", image: "deadpool_preview"),
        Hero(id: 6, name: "Iron Man", image: "ironman_preview"),
        Hero(id: 3, name: "Capitan America", image: "captain_america_preview"),
        Hero(id: 4, name: "Doctor Strange", image: "doctor_strange_preview"),
        Hero(id: 5, name: "Hulk", image: "hulk_preview"),
        Hero(id: 2, name: "Black Widow", image: "black_widow_preview"),
        Hero(id: 7, name: "Thor", image: "thor_preview")
    ]
    
    var body: some View {
        VStack {
            Image("logo").resizable().scaledToFit().frame(width: 200, height: 100, alignment: .center).padding()
            Text("Choose your hero").foregroundColor(.white).bold().font(.system(size: 36)).padding()
            ScalePageView(heroes) { hero in
                ZStack(alignment: .bottomLeading) {
                    Image(hero.image).resizable()
                    Text(hero.name).font(.system(size: 32)).foregroundColor(.white).bold().padding()
                }.cornerRadius(20)
            }
            .pagePadding(vertical: .absolute(16), horizontal: .absolute(32))
            .options(.init(
                minScale: 0.6,
                scaleRatio: 0.2,
                translationRatio: CGPoint(x: 0.87, y: 0.2),
                maxTranslationRatio: CGPoint(x: 2, y: 0),
                keepVerticalSpacingEqual: true,
                keepHorizontalSpacingEqual: true,
                scaleCurve: .linear,
                translationCurve: .linear
            ))
        }.background(Color.init(red: 42 / 255, green: 39 / 255, blue: 43 / 255))
    }
}
