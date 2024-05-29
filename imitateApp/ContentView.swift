//
//  ContentView.swift
//  imitateApp
//
//  Created by YaHan on 2024/5/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("")
                    .padding(.trailing, 35.0)
                Spacer()
                Text("收藏")
                    .font(.title2)
                    .foregroundStyle(.white)
                    .bold()
                Spacer()
                
                Image(systemName: "list.bullet.indent")
                    .font(.title2)
                    .foregroundStyle(.white)
                
            }
            .padding()
            .background(Color(red: 0, green: 183/255, blue: 215/255))
            
            
        }
        HStack{
            chageImage(name: "咒術迴戰",timesWatched: "2317.4萬",yearEpisode: "年份:2020/10 共24集",star: "4.9")
            
            chageImage(name: "國王排名",timesWatched: "612.5萬",yearEpisode: "年份:2021/10 共23集",star: "4.9")
            
        }
        
        
        
        
        HStack{
            chageImage(name: "排球少年",timesWatched: "470.2萬",yearEpisode: "年份:2020/10 共12集",star: "4.9")
            chageImage(name: "進擊的巨人",timesWatched: "1783萬",yearEpisode: "年份:2021/12 共29集",star: "4.9")
            
        }
        Divider()
        HStack{
            Spacer()
            icon(name: "首頁", picName: "tv")
            Spacer()
            icon(name: "所有動畫", picName: "square.3.layers.3d.down.right")
            Spacer()
            icon(name: "收藏", picName: "heart")
            Spacer()
            icon(name: "紀錄", picName: "clock")
            Spacer()
            icon(name: "我的", picName: "person")
            Spacer()
            
        }
        
    }
}

#Preview {
    ContentView()
    
    
}

struct chageImage: View {
    let name: String
    let timesWatched: String
    let yearEpisode: String
    let star: String
    
    
    var body: some View {
        VStack(alignment:.leading) {
            ZStack{
                Image(name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 190,height: 250)
                HStack{
                    Text("雙語")
                        .foregroundStyle(.white)
                        .background(Color(red: 241/255, green: 116/255, blue: 138/255))
                        .cornerRadius(5)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                        .padding(.leading, 23.0)
                        .padding(.bottom, 5)
                    HStack{
                        Image(systemName: "eye.fill")
                            .foregroundStyle(.white)
                        Text(timesWatched)
                            .foregroundStyle(.white)
                        
                    }
                    
                    .frame(width: 110,height: 25)
                    .background(.black)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                    .opacity(0.7)
                    .padding(.trailing)
                    .padding(.bottom, 5)
                    
                    
                    
                }
                Image(systemName: "heart.fill")
                    .foregroundStyle(Color(red: 241/255, green: 116/255, blue: 138/255))
                    .font(.title2)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                    .padding(.trailing,20)
                    .padding(.top,10)
                
                
            }
            Text(name)
                .bold()
                .font(.title3)
                .padding(.leading)
            Text(yearEpisode)
                .padding(.leading)
            HStack{
                Image(systemName: "star.fill")
                    .foregroundStyle(.orange)
                Text(star)
                    .foregroundStyle(.orange)
                
            }
            .padding(.leading)
        }
        
        .shadow(radius: 10)
        
        
    }
    
}

struct icon: View {
    let name: String
    let picName: String
    
    
    var body: some View {
        VStack{
            Image(systemName: picName)
                .foregroundStyle(.gray)
            Text(name)
        }
        
    }
}
