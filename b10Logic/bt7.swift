//
//  bt7.swift
//  b10Logic
//
//  Created by Nguyễn Anh Tú on 15/04/2022.
//

import Foundation

// Bài 7: Nhập vào 1 số nguyên. Kiểm tra số đó có đối xứng hay không. Ví dụ: Số 12344321 là số đối xứng.

func doiXung() {
    print("Nhập vào số n: ", terminator: "")
    let n = Int(readLine() ?? "") ?? 0
    
    var n1: String = ""
    n1 = String(n.description.reversed())
    
    if Int(n1) == Int(n) {
        print("Số \(n) là số đối xứng")
    } else {
        print("Số \(n) không là số đối xứng")
    }
}
