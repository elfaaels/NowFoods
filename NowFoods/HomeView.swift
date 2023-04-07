//
//  HomeView.swift
//  NowFoods
//
//  Created by Elfana Anamta Chatya on 07/04/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchFood: String = ""
    
    var body: some View {
        VStack (alignment: .leading, spacing: 0.0) {
            // NOTE: Header Area
            HStack {
                Image("UserPhoto")
                Spacer()
                VStack (alignment: .trailing) {
                    Text("Hello")
                        .font(.custom("Poppins", size: 16))
                        .fontWeight(Font.Weight.regular)
                        .foregroundColor(Color("GreySet"))
                    Text("Maya Hawke")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("BlackSet"))
                }
            }.padding(.horizontal, 24.0)
            // NOTE: Headline Area
            VStack (alignment: .center) {
                Text("What do you want for\nLunch?")
                    .font(.custom("Poppins-SemiBold", size: 22))
                    .foregroundColor(Color("BlackSet"))
                    .multilineTextAlignment(.center)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight:  66, maxHeight: 66)
            .padding(.top, 30.0)
            .padding(.bottom, 24.0)
            HStack {
                TextField("Search pizza, burger, etc ...", text: $searchFood)
                    .disableAutocorrection(true)
                    .padding(.leading, 24.0)
            }
            .frame(minWidth: 0, maxWidth: .infinity,
                 minHeight: 50,  maxHeight: 50)
            .cornerRadius(50.0)
            VStack {
                Text("Categories")
                    .font(.custom("Poppins-SemiBold", size: 16))
                    .foregroundColor(Color("BlackSet"))
                   
            }
            .padding(.top, 30.0)

        }
        .padding(.horizontal, 24.0)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
