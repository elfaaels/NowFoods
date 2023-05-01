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
        ScrollView(.vertical, showsIndicators: false,content: {
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
                VStack (alignment: .leading, spacing: 0.0) {
                    Text("Categories")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("BlackSet"))
                        .padding(.bottom, 12.0)
                    // Categories Area
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack {
                            HStack {
                                Image("CatBread")
                                    .padding(.vertical, 5.0)
                                    .padding(.leading, 5.0)
                                Text("Bread")
                                    .font(.custom("Poppins-Medium", size: 16))
                                    .foregroundColor(Color("BlackSet"))
                                    .padding(.trailing, 18.0)
                            }
                            .cornerRadius(50.0)
                            HStack {
                                Image("CatCarrot")
                                    .padding(.vertical, 5.0)
                                    .padding(.leading, 5.0)
                                Text("Healthy")
                                    .font(.custom("Poppins-Medium", size: 16))
                                    .foregroundColor(Color("BlackSet"))
                                    .padding(.trailing, 18.0)
                            }
                            .cornerRadius(50.0)
                            HStack {
                                Image("CatDonut")
                                    .padding(.vertical, 5.0)
                                    .padding(.leading, 5.0)
                                Text("Sweets")
                                    .font(.custom("Poppins-Medium", size: 16))
                                    .foregroundColor(Color("BlackSet"))
                                    .padding(.trailing, 18.0)
                            }
                            .cornerRadius(50.0)
                            HStack {
                                Image("CatBread")
                                    .padding(.vertical, 5.0)
                                    .padding(.leading, 5.0)
                                Text("Pastries")
                                    .font(.custom("Poppins-Medium", size: 16))
                                    .foregroundColor(Color("BlackSet"))
                                    .padding(.trailing, 18.0)
                            }
                            .cornerRadius(50.0)
                        }
                    })
                }
                .padding(.top, 30.0)
                // Food Card
                VStack (alignment: .leading, spacing: 0.0) {
                    Text("Most Ordered")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("BlackSet"))
                        .padding(.bottom, 12.0)
                    HStack (spacing: 0.0) {
                        Image("FoodOrange").padding(.trailing, 16.0)
                        VStack (alignment: .leading, spacing: 0.0) {
                            Text("Orange Squash")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("BlackSet"))
    //                            .padding(.leading, 6.0)
                            Text("Healthy")
                                .font(.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("GreySet"))
                        }
                        .padding(.leading, 0.0)
                        Spacer()
                        HStack {
                            Text("4.7")
                                .font(.custom("Poppins-Medium", size: 14))
                                .foregroundColor(Color("BlackSet"))
                            Image("IconStar")
                        }
                    }
                    HStack (spacing: 0.0) {
                        Image("FoodGyoza").padding(.trailing, 16.0)
                        VStack (alignment: .leading, spacing: 0.0) {
                            Text("Gyoza Set")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("BlackSet"))
                            Text("Side Dish")
                                .font(.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("GreySet"))
                        }
                        .padding(.leading, 0.0)
                        Spacer()
                        HStack {
                            Text("4.3")
                                .font(.custom("Poppins-Medium", size: 14))
                                .foregroundColor(Color("BlackSet"))
                            Image("IconStar")
                        }
                    }
                    .padding(.top, 20.0)
                    HStack (spacing: 0.0) {
                        Image("FoodAvocado").padding(.trailing, 16.0)
                        VStack (alignment: .leading, spacing: 0.0) {
                            Text("Avocado Salad")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("BlackSet"))
                            Text("Healthy")
                                .font(.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("GreySet"))
                        }
                        .padding(.leading, 0.0)
                        Spacer()
                        HStack {
                            Text("4.0")
                                .font(.custom("Poppins-Medium", size: 14))
                                .foregroundColor(Color("BlackSet"))
                            Image("IconStar")
                        }
                    }
                    .padding(.top, 20.0)
                    HStack (spacing: 0.0) {
                        Image("FoodAvocado").padding(.trailing, 16.0)
                        VStack (alignment: .leading, spacing: 0.0) {
                            Text("Avocado Salad")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("BlackSet"))
                            Text("Healthy")
                                .font(.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("GreySet"))
                        }
                        .padding(.leading, 0.0)
                        Spacer()
                        HStack {
                            Text("4.0")
                                .font(.custom("Poppins-Medium", size: 14))
                                .foregroundColor(Color("BlackSet"))
                            Image("IconStar")
                        }
                    }
                    .padding(.top, 20.0)
                }
                
                .padding(.top, 30.0)
                VStack (alignment: .leading, spacing: 0.0) {
                    Text("Newest Foods")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("BlackSet"))
                        .padding(.bottom, 12.0)
                    HStack (spacing: 0.0) {
                        Image("FoodAvocado").padding(.trailing, 16.0)
                        VStack (alignment: .leading, spacing: 0.0) {
                            Text("Avocado Salad")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("BlackSet"))
                            Text("Healthy")
                                .font(.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("GreySet"))
                        }
                        .padding(.leading, 0.0)
                        Spacer()
                        HStack {
                            Text("4.0")
                                .font(.custom("Poppins-Medium", size: 14))
                                .foregroundColor(Color("BlackSet"))
                            Image("IconStar")
                        }
                    }
                    .padding(.top, 20.0)
                    HStack (spacing: 0.0) {
                        Image("FoodAvocado").padding(.trailing, 16.0)
                        VStack (alignment: .leading, spacing: 0.0) {
                            Text("Avocado Salad")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("BlackSet"))
                            Text("Healthy")
                                .font(.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("GreySet"))
                        }
                        .padding(.leading, 0.0)
                        Spacer()
                        HStack {
                            Text("4.0")
                                .font(.custom("Poppins-Medium", size: 14))
                                .foregroundColor(Color("BlackSet"))
                            Image("IconStar")
                        }
                    }
                    .padding(.top, 20.0)
                    HStack (spacing: 0.0) {
                        Image("FoodAvocado").padding(.trailing, 16.0)
                        VStack (alignment: .leading, spacing: 0.0) {
                            Text("Avocado Salad")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("BlackSet"))
                            Text("Healthy")
                                .font(.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("GreySet"))
                        }
                        .padding(.leading, 0.0)
                        Spacer()
                        HStack {
                            Text("4.0")
                                .font(.custom("Poppins-Medium", size: 14))
                                .foregroundColor(Color("BlackSet"))
                            Image("IconStar")
                        }
                    }
                    .padding(.top, 20.0)
                }
            
                .padding(.top, 30.0)
            }
            .padding(.horizontal, 24.0)
        })
       
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
