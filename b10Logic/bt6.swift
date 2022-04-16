//
//  bt6.swift
//  b10Logic
//
//  Created by Nguyễn Anh Tú on 15/04/2022.
//

import Foundation

// Bài 6: Nhập vào 1 mảng số nguyên và số x. Chèn số x vào sau số lớn nhất trong mảng. (Không dùng hàm insert có sẵn)

func insertX() {
    var arr = [34, 21, -23, 66, 5, 9, 3]
    var max = arr[0]
    var index = 0
    
    for i in 0..<arr.count {
        if max < arr[i] {
            max = arr[i]
            print(i)
            index = i
        }
    }
    print("Nhập số x: ", terminator: "")
    let x = Int(readLine() ?? "") ?? 0
//    arr.append(x)
//    print(arr)
    
    var arr1: [Int] = [x]
    var arr2: [Int] = []
    
    for i in index+1..<arr.count {
//        print(arr[i])
        arr1.append(arr[i])
//        arr.remove(at: i)
    }
    
    for i in 0...index {
        arr2.append(arr[i])
    }
    
    let insertArr = arr2 + arr1
    print(insertArr)
    
}
