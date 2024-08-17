//
//  ContentView.swift
//  CounterApp
//
//  Created by Mukesh Rajput on 17/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var count: Int = 0;
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.title)
                .accentColor(.black)
            
            HStack {
                Button(action: {
                    count -= 1
                }, label: {
                    Text("Decrement").accentColor(.white)
                }).padding(.all).background(.gray).clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10), style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                
                
                Button(action: {
                    count += 1
                }, label: {
                    Text("Increment").accentColor(.white)
                }).padding(.all).background(.orange).clipShape(RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
