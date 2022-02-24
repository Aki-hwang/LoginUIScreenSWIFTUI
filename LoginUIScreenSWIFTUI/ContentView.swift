//
//  ContentView.swift
//  LoginUIScreenSWIFTUI
//
//  Created by Chuljin Hwang on 2022/02/24.
//

import SwiftUI

struct ContentView: View {
    @State private var email : String = ""
    @State private var password : String = ""
    @State var isLogin : Bool = false
    var body: some View {
        
        ZStack {
            Color("ColorBlack")
                .ignoresSafeArea(.all)
            VStack{
                HStack {
                  
                    Button(action: {
                        isLogin = true
                    }, label: {
                        VStack {
                            Text("Login")
                                .foregroundColor(isLogin ? .white : Color("ColorLightgray"))
                            Rectangle()
                                .frame(width: 90, height: 8)
                                .foregroundColor(isLogin ? .blue : Color("ColorBlack")).cornerRadius(24)
                        }
                    })
                    Spacer()
                    Button(action: {
                        isLogin = false
                    }, label: {
                        VStack {
                            Text("Signin")
                                .foregroundColor(isLogin ? Color("ColorLightgray") : .white)
                            Rectangle()
                                .frame(width: 90, height: 8)
                                .foregroundColor(isLogin ? Color("ColorBlack") : .blue).cornerRadius(24)
                        }
                    })
               
                } //HSTACK
                .font(.system(.title, design: .rounded).bold())
                .padding(.horizontal,40)
                .padding(.vertical, 50)
                
                Group {
                    HStack{
                        Image(systemName: "envelope.fill")
                            .font(.system(size: 24))
                            .frame(width: 20)
                            .foregroundColor(.red)
                        VStack {
                            TextField("Email address", text:$email)
                            Divider()
                                .background(Color.red)
                             
                        }
                    }
                    .padding(.bottom,20)
                    HStack{
                        Image(systemName: "eye.slash.fill")
                            .font(.system(size: 24))
                            .frame(width: 20)
                            .foregroundColor(.red)
                        VStack {
                            SecureField("Password", text: $password)
                            Divider()
                                .background(Color.red)
                        }
                        
                    }
                }
                
               
                HStack() {
                    Spacer()
                    Button(action: {}, label: {
                        Text("Forget Password")
                            .font(.system(.title2, design:.rounded))
                            .foregroundColor(Color("ColorLightgray"))
                    })
                        .padding(.trailing)
                        .padding(.vertical,30)
                }
               
                Button(action: {
                    
                }, label: {
                    Text("Login")
                        .font(.system(.title2, design:.rounded).bold())
                        .foregroundColor(.white)
                        .padding(.vertical,10)
                        .padding(.horizontal,50)
                        .background(
                            Capsule().fill(Color.red)
                        )
                             
                })
                HStack{
                    Rectangle()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 1)
                        .foregroundColor(.red)
                    Text("OR")
                        .font(.system(.body, design: .rounded))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(UIColor.lightGray))
                    Rectangle()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 1)
                        .foregroundColor(.red)
                }
                .padding()
                .padding(.vertical, 20)
                HStack{
                    Button(action: {
                        
                    }, label: {
                        Image("logo-apple")
                            .padding(.horizontal,15)
                    })
                    Button(action: {
                        
                    }, label: {
                        Image("logo-facebook")
                            .padding(.horizontal,15)
                    })
                 
                    Button(action: {
                        
                    }, label: {
                        Image("logo-kakao")
                            .padding(.horizontal,15)
                    })
                }
                
            } //VSTACK
            .foregroundColor(.white)
            .padding(.horizontal,20)
            
        }
        //            .background(Color(.init(dark: 0.95, alpha: 1)))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
