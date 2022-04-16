//
//  bt3.swift
//  b10Logic
//
//  Created by Nguyễn Anh Tú on 14/04/2022.
//

import Foundation

// Bài 3: Nhập 1 số từ bàn phím. Xác định số đó có phải có là số Amstrong hay không. Số Armstrong là một số có chữ số n bằng tổng của các số thứ n của các chữ số. Số đó là tổng các chữ số riêng của mỗi số được nâng lên lũy thừa số chữ số.
/**
Ví dụ: 371 là một số Armstrong vì: 371 = 3^3 + 7^3 + 1^3
 
 371 = pow(3, 3) + pow(7, 3) + pow(1, 3)
*/

func armstrong() {
    var arr: [Int] = []
    print("Nhập vào số: ", terminator: "")
    let a = Int(readLine() ?? "") ?? 0
    
    for i in String(a) {
        arr.append(Int(String(i)) ?? 0)
    }
    print(arr)
    
    var tong = 0
    
    for i in 0..<arr.count {
        tong += Int(pow(Float(arr[i]), Float(arr.count)))
    }
    print(tong)
    if a == tong {
        print("Số \(a) là số Armstrong")
    } else {
        print("Số \(a) không là số Armstrong")
    }
}
