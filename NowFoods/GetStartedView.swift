//
//  GetStartedView.swift
//  NowFoods
//
//  Created by Elfana Anamta Chatya on 07/04/23.
//

import SwiftUI

struct GetStartedView: View {
    var body: some View {
        VStack {
            // NOTE: Main Area
            Image("OnboardingImage")
                .padding(.bottom, 50.0)
            HStack {
                VStack(alignment: .leading, spacing: 0.0) {
                    Text("180K Store")
                        .font(.custom("Poppins", size: 16))
                        .fontWeight(Font.Weight.regular)
                        .foregroundColor(Color("GreySet"))
                    Text("Order Your\nFav Foods Now")
                        .font(.custom("Poppins-Bold", size: 36))
                        .foregroundColor(Color("BlackSet"))
                    Button(action:{
                        print("My Foods Clicked!")
                    }, label: {
                        // NOTE: Button Area
                        ZStack {
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: 327, height: 50)
                                .foregroundColor(Color("OrangeSet"))
                            Text("Explore Now")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("WhiteSet"))
                        }
                    })
                    .padding(.top, 30.0)
                }
            }
        }
    

    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
