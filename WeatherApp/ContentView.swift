//
//  ContentView.swift
//  WeatherApp
//
//  Created by Carl Irven Nykuluz F. Millanes on 7/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),              startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{            //Main VStack
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .rounded))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 12){
                    
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium, design: .monospaced))
                        .foregroundColor(.white)
                }
                Spacer()
                HStack(spacing: 20){
            
                    VStack{
                        WeatherDayView(dayOfWeek: "TUE",
                                       imageName: "cloud.sun.fill",
                                       temperature: 74)
                    }
                    VStack{
                        WeatherDayView(dayOfWeek: "WED",
                                       imageName: "sun.max.fill",
                                       temperature: 88)
                    }
                    VStack{
                        WeatherDayView(dayOfWeek: "THU",
                                       imageName: "sun.haze.fill",
                                       temperature: 80)
                    }
                    VStack{
                        WeatherDayView(dayOfWeek: "FRI",
                                       imageName: "sunset.fill",
                                       temperature: 69)
                    }
                    VStack{
                        WeatherDayView(dayOfWeek: "SAT",
                                       imageName: "cloud.sun.rain.fill",
                                       temperature: 64)
                    }
                }
                Spacer()
            }
        }
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 18, weight: .medium, design: .default))
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
            
        }
        
        
        .foregroundColor(.white)
    }
}
