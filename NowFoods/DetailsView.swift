//
//  DetailsView.swift
//  NowFoods
//
//  Created by Elfana Anamta Chatya on 14/05/23.
//

import SwiftUI

struct DetailsView: View {
    
    @State private var backFromOrder = false
    var body: some View {
        
        return Group {
            if backFromOrder {
                HomeView()
            }
            else {
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack (alignment: .leading, spacing: 0.0) {
                        Image("FoodGyoza").resizable().frame(width: 325.0, height: 310.0)
                            .padding(.top, 18.0)
                            .padding(.bottom, 10.0)
                        
                        HStack (spacing: 0.0) {
                            VStack (alignment: .leading, spacing: 0.0) {
                                Text("Gyoza Cienway")
                                    .font(.custom("Poppins-SemiBold", size: 22))
                                    .foregroundColor(Color("BlackSet"))
                                Text("Chinese Special")
                                    .font(.custom("Poppins-Regular", size: 14))
                                    .foregroundColor(Color("GreySet"))
                            }
                            .padding(.top, 20.0)
                            Spacer()
                            HStack {
                                Text("4.8")
                                    .font(.custom("Poppins-Medium", size: 14))
                                    .foregroundColor(Color("BlackSet"))
                                Image("IconStar")
                            }
                        }
                        Text("Jiaozi are a type of Chinese dumpling. Jiaozi are folded to resemble Chinese sycee and have great cultural significance attached to them within China. Jiaozi are one of the major dishes eaten during the Chinese New Year throughout northern China and eaten all year round in the northern provinces.")
                            .font(.custom("Poppins-Regular", size: 16))
                            .foregroundColor(Color("BlackSet"))
                            .padding(.top, 16.0)
                            .padding(.bottom, 20.0)
                            .lineSpacing(5.0)
                        HStack {
                            VStack (alignment: .leading, spacing: 0.0) {
                                Text("Bundle")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                    .foregroundColor(Color("BlackSet"))
                                    .padding(.bottom, 12.0)
                                HStack (spacing: 0.0) {
                                    Image("FoodOrange").padding(.trailing, 16.0)
                                    Image("FoodAvocado").padding(.trailing, 16.0)
                                    Image("FoodOrange").padding(.trailing, 16.0)

                                    
                                }
                            }
                        }
                        HStack (spacing: 0.0) {
                            VStack (alignment: .leading, spacing: 0.0) {
                                Text("$290")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                    .foregroundColor(Color("BlackSet"))
                                    .padding(.bottom, 0.0)
                                    .padding(.top, 18.0)
                                Text("/portion")
                                    .font(.custom("Poppins-Regular", size: 14))
                                    .foregroundColor(Color("GreySet"))
                                    .padding(.bottom, 14.0)
                            }
                            Spacer()
                            Button(action:{
                                print("Food Ordered!")
                                self.backFromOrder = true
                            }, label: { ZStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 190, height: 50)
                                    .foregroundColor(Color("OrangeSet"))
                                Text("Order Now")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                    .foregroundColor(Color("WhiteSet"))
                            }
                        }
                    )}
                        .padding(.top, 16.0)
                    }
                    .padding(.horizontal, 20.0)
                    .padding(.all, 8.0)
                })
            }
            }
        }
       
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
