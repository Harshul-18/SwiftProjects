//
//  ContentView.swift
//  Dupple
//
//  Created by Harshul Nanda on 13/01/22.
//

import SwiftUI

struct ContentView: View {
    
    init() {
            UITableView.appearance().showsVerticalScrollIndicator = false
        }
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        ZStack {
            NavigationView{
                
                List(networkManager.posts) { post in
                    
                    NavigationLink(destination: DetailView(url: post.url)){
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                }
                .navigationTitle("Dupple News")
            }
            .onAppear {
                self.networkManager.fetchData()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


