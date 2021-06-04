//
//  ContentView.swift
//  MyFirstSwiftUI
//
//  Created by Amben on 6/2/21.
//

import SwiftUI

struct Data: Identifiable {
    var id = UUID()
    let title: String
    let imageName: String
    let imageDesc: String
    let imageDate: String
}

struct ContentView: View {
    
    var items = [Data]()
    
    var body: some View {
        NavigationView {
            List(items) { data in
                NavigationLink(destination: DataView(data: data)) {
                    HStack {
                        Image(data.imageName)
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            .cornerRadius(10)
                        
                        Text(data.title)
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                    }
                }
            }
            .navigationBarTitle("Photos")
        }
    }
}

struct DataView: View {
    
    var data: Data
    
    var body: some View {
        VStack {
            Image(data.imageName)
                .resizable()
                .frame(width: 400, height: 400, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
            
            Text(data.imageDesc)
                .padding(10)
            
            Spacer()
            Text(data.imageDate)
                .padding(5)
            
        }
        .navigationBarTitle(data.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(items: [
                Data(title: "Person 1",
                     imageName: "person1",
                     imageDesc: "I made this app using SwiftUI, I made this app using SwiftUI, I made this app using SwiftUI, I made this app using SwiftUI",
                     imageDate: "06/02/2021"),
                Data(title: "Person 2",
                     imageName: "person2",
                     imageDesc: "I made the app called Facebook, I made the app called Facebook, I made the app called Facebook, I made the app called Facebook",
                     imageDate: "06/02/2021"),
                Data(title: "Person 3",
                     imageName: "person3",
                     imageDesc: "I made Windows, I made Windows, I made Windows, I made Windows, I made Windows",
                     imageDate: "06/02/2021"),
            ])
            .environment(\.colorScheme, .dark)
            
            ContentView(items: [
                Data(title: "Person 1",
                     imageName: "person1",
                     imageDesc: "I made this app using SwiftUI, I made this app using SwiftUI, I made this app using SwiftUI, I made this app using SwiftUI",
                     imageDate: "06/02/2021"),
                Data(title: "Person 2",
                     imageName: "person2",
                     imageDesc: "I made the app called Facebook, I made the app called Facebook, I made the app called Facebook, I made the app called Facebook",
                     imageDate: "06/02/2021"),
                Data(title: "Person 3",
                     imageName: "person3",
                     imageDesc: "I made Windows, I made Windows, I made Windows, I made Windows, I made Windows",
                     imageDate: "06/02/2021"),
            ])
            .environment(\.colorScheme, .light)
        }
    }
}
