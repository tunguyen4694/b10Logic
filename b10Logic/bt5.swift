//
//  bt5.swift
//  b10Logic
//
//  Created by Nguyễn Anh Tú on 15/04/2022.
//

import Foundation

// Bài 5: Nhập vào 1 mảng gồm n số nguyên. In ra số lớn thứ 2 và số bé thứ 2 trong mảng đó.

func minMax() {
let arr = [12, 34, -124, 42, 2, 5, 7, 45, 98]

let sortArr = arr.sorted()

    print("Số lớn thứ 2 là: \(sortArr[sortArr.count-2])")
    print("Số bé thứ 2 là: \(sortArr[1])")
    
}
