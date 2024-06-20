//
//  SideBarMenuView.swift
//  Pluxee App
//
//  Created by Pulipati Venkata Sai on 16/06/24.
//

import SwiftUI

struct SideBarMenuView: View {
    
    var body: some View {
        VStack(spacing:0) {
            VStack(spacing:0){
                Spacer()
                HStack(spacing:0){
                    Button {
                        //navigate to camera
                    } label: {
                        Image("CameraImg")
                    }
                    .buttonStyle(.plain)
                    .frame(width: 80, height: 80)
                    .padding(.trailing,10)
                    .padding(.leading,20)
                    VStack(spacing:0){
                        Spacer()
                        Text("PULIPATI SAI")
                            .font(.title2)
                            .bold()
                            .frame(alignment: .leading)
                            Spacer()
                        Text(" Edit your profile")
                            .font(.title3)
                            //.bold()
                        Spacer()
                    }
                    .foregroundColor(.white)
                    .frame(height: 80,alignment: .leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.system(size: 24))
                        .foregroundColor(.white)

                    Spacer()
                }
                .padding(.bottom,30)
            }
            .frame(width: 350, height: 180)
            .background(){
                Rectangle()
                    .fill(Color(red: 33/255, green: 29/255, blue: 68/255))
        }
            sideBarListView()
            Spacer()
        }
        .background(){
            Rectangle()
                .fill(.white)
        }
        .frame(width: 350)
        .padding(.trailing,100)
        .ignoresSafeArea()
        
        
    }
}

struct sideBarListView:View{
    var categoryList = ["Manage","Merchant Directory","Settings","Send Logs","About us","Help center","Suggest an outlet"]
    var imageNameList = ["ManageOption","MerchantOption","SettingOption","LogsOption","AboutUSOption","HelpCenterOption","OutletOption"]
    var body: some View{
        List{
            ForEach(0..<categoryList.count){i in
                ListCellView(categoryName: categoryList[i], imageName: imageNameList[i])
            }
        }
        .listStyle(.plain)
        .padding()
        .frame(width: 350)
    }
}

struct ListCellView:View{
    var categoryName:String
    var imageName:String
    var body: some View{
        HStack(spacing:0){
            Image(imageName)
                .padding(.trailing,30)
            Text(categoryName)
                .font(.title3)
                .bold()
            Spacer()
        }
        .foregroundColor((Color(red: 33/255, green: 29/255, blue: 68/255)))
        .padding()
        .frame(width: 300, height: 50)
    }
}
struct SideBarMenuView_Previews: PreviewProvider {
    static var previews: some View {
       SideBarMenuView()
        //ListCellView(categoryName: "", imageName: "")
    }
}
