//
//  ContentView.swift
//  EditColor
//
//  Created by eyh.mac on 26.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var rectColor: Color = .white
    @State var primaryTextColor: Color = .black
    @State var secondaryTextColor: Color = .secondary
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(rectColor)
                    .frame(width: .infinity,height: 300)
                    .shadow(color: .gray.opacity(0.3), radius: 15)
                    
                .overlay{
                    VStack(alignment: .leading,spacing: 20){
                        HStack(spacing: 15) {
                            Image("logo")
                                .resizable()
                                .frame(width: 55, height: 55)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading){
                                
                                Text("eyh.dev")
                                    .foregroundColor(primaryTextColor)
                                    .bold()
                                
                                Text("IOS Developer")
                                    .font(.caption)
                                    .foregroundColor(secondaryTextColor)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        
                        Text("Hi, I'm eyh.dev 👋🏻 I am a highly skilled web and mobile developer with 4 years of experience. My passion for technology led me to pursue a career in development at a young age of 20. I have a strong understanding of multiple programming languages and constantly strive to stay up-to-da")
                        
                            .foregroundColor(secondaryTextColor)
                      }
                    .padding()
                    .padding(.horizontal, 20)
                }
                VStack(spacing: 10){
                    ColorPicker("Background Color", selection: $rectColor)
                        .foregroundColor(.secondary)
                        .bold()
                        .padding()
                        .padding(.horizontal)
                        
                    ColorPicker("Primary Text Color", selection: $primaryTextColor)
                        .foregroundColor(.secondary)
                        .bold()
                        .padding()
                        .padding(.horizontal)
                    
                    ColorPicker("Secondary Text Color", selection: $secondaryTextColor)
                        .foregroundColor(.secondary)
                        .bold()
                        .padding()
                        .padding(.horizontal)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .navigationTitle("Edit Color")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
