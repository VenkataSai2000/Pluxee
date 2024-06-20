//
//  HomePageView.swift
//  Pluxee App
//
//  Created by Pulipati Venkata Sai on 19/06/24.
//

import SwiftUI

struct HomePageView: View {
    @State var showSidebarMenu:Bool = false
    let rows:[GridItem] = [
        GridItem(.flexible())
    ]
    var body: some View {
        VStack {
            VStack(spacing: 0){
                //Welcome Header
                HStack(spacing: 4){
                    hamburgerButton(showSidebarMenu: $showSidebarMenu)
                        .padding(.bottom,3)
                    Text("Welcome PULIPATI!")
                        .font(.title3)
                        .bold()
                        .padding(.leading,7)
                        .foregroundColor(.white)
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(.green)
                        .padding(.bottom,5)
                        .padding(.leading,5)
                    Spacer()
                }
                .padding(.leading,20)
                .padding(.top,20)
                
                //Payment options box
                HStack{
                    Spacer()
                    VStack(spacing: 4){
                        Image("PayImg")
                        Text("Pay")
                            .font(.body)
                    }.onTapGesture {
                        //Open scanner
                    }
                    Spacer()
                    VStack(spacing: 4){
                        Image("MerchanImg")
                        Text("Merchants")
                            .font(.body)
                    }.onTapGesture {
                        //open merchants tab
                    }
                    Spacer()
                    VStack(spacing: 4){
                        Image("TransactionImg")
                        Text("Transactions")
                            .font(.body)
                    }.onTapGesture {
                        //open transactions
                    }
                    Spacer()
                }
                .frame(width: 400, height: 110, alignment: .center)
                .foregroundColor(.black)
                .background(){
                    Rectangle()
                        .fill(.white)
                }
                .padding(.top,30)
                
                HStack(spacing: 5) {
                    Text("Scan and pay powered by")
                        .font(.footnote)
                    .foregroundColor(.white.opacity(0.8))
                    Image("BharathPayLogo")
                    Spacer()
                }.frame(height: 50)
                    .padding(.leading,30)
                ScrollView(.horizontal,showsIndicators: false){
                    LazyHGrid(rows: rows,spacing: 20){
                        pluxeeCardView()
                        pluxeeCardView()
                    }.frame(height: 250)
                }
                
                
                Spacer()
            }
            .frame(height: 500)
            .background(){
                Rectangle()
                    .fill(Color(red: 33/255, green: 29/255, blue: 68/255))
        }
            Spacer()
            balanceView()
                .padding(.bottom)
        }
        .onTapGesture {
            if(showSidebarMenu){
                showSidebarMenu = false
            }
        }
        .overlay(){
            if(showSidebarMenu){
                SideBarMenuView()
            }
        }
        //.ignoresSafeArea()
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
