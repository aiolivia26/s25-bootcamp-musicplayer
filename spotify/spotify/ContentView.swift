//
//  ContentView.swift
//  spotify
//
//  Created by Olivia Kirby on 2/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var minutes: Double = 0
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().preferredColorScheme(.dark)
        }
    }
    
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("spotgreen"), Color("spotblack")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                HStack(spacing:135){
                    Image(systemName: "chevron.down")
                        .font(.system(size:22))
                    Text("Sling").bold()
                    Image(systemName: "ellipsis")
                        .font(.system(size:22))
                }
                Spacer()
                Image("clairo")
                    .resizable()
                    .frame(width: 350, height: 350)
                    .cornerRadius(10)
                    .offset(y:-20)
                    .padding(40)
                HStack{
                    VStack{
                        Text("Amoeba").bold()
                            .font(.system(size:28))
                            .offset(x:-95)
                        Text("Clairo")
                            .offset(x:-127)
                            .foregroundColor(Color("grayish"))
                    }
                    Image(systemName: "heart")
                        .font(.system(size:28))
                        .foregroundColor(Color("grayish"))
                        .offset(x:100)
                }
                VStack {
                    Slider(value: $minutes, in: -50...50)
                        .accentColor(.white)
                }
                HStack{
                    Image(systemName: "shuffle")
                        .font(.system(size:24))
                        .padding(12)
                    Image(systemName: "backward.end.fill")
                        .font(.system(size: 27))
                        .padding(20)
                    Image(systemName: "pause.circle.fill").foregroundColor(.white)
                        .font(.system(size: 70))
                    Image(systemName: "forward.end.fill")
                        .font(.system(size: 27))
                        .padding(20)
                    Image(systemName: "repeat")
                        .font(.system(size:24))
                        .padding(12)
                }
                HStack {
                    Image(systemName: "hifispeaker")
                        .padding(10)
                        .font(.system(size:20))
                        .offset(x:-130)
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size:20))
                        .offset(x:90)
                    Image(systemName: "square.stack")
                        .font(.system(size: 18))
                        .offset(x:120)
                }
            }
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
