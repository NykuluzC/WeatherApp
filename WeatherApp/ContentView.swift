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
            BackgroundView(topColor: .blue, midColor: .green, bottomColor: Color("lightBlue"))
            VStack{            //Main VStack
                CityTextView(cityName: "Baybay City, PH")
                
                MainWeatherView(imageName: "cloud.sun.fill",
                                temp: 76)
                
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
                Button {
                    print("tapped")
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .white, backgroundColor: .blue)
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

struct BackgroundView: View {
    var topColor: Color
    var midColor: Color
    var bottomColor: Color
    var body: some View {
        
       
        LinearGradient(gradient: Gradient(colors: [topColor, midColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .rounded))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherView: View {
    var imageName: String
    var temp: Int
    var body: some View {
        VStack(spacing: 12){
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text(String("\(temp)°"))
                .font(.system(size: 70, weight: .medium, design: .monospaced))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
