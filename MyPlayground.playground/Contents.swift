import UIKit

//x, y = 0, 0

//plan.each do |direction|
//  case direction
//  when 'NORTH' then y += 1
//  when 'EAST'  then x += 1
//  when 'SOUTH' then y -= 1
//  when 'WEST'  then x -= 1
//  end
//end

//struct StringStack {
//    var array: [String] = []
//
//    func peek() -> String {
//        guard let topElement = array.first else { fatalError("The Stack is empty.")}
//        return topElement
//    }
//
//    mutating func pop() -> String {
//        return array.removeFirst()
//    }
//
//    mutating func push(_ element: String) {
//        array.insert(element, at: 0)
//    }
//}
//
//func directionsReduce(_ directions: [String]) -> [String] {
//    var reducedDirs = StringStack()
//
//    reducedDirs.push(directions[1])
//    for direction in directions {
//        if((direction == "NORTH" && reducedDirs.peek() == "SOUTH")
//            || (direction == "SOUTH" && reducedDirs.peek() == "NORTH")
//            || (direction == "EAST" && reducedDirs.peek() == "WEST")
//            || (direction == "WEST" && reducedDirs.peek() == "EAST")
//        ) {
//            reducedDirs.pop()
//        } else {
//            reducedDirs.push(direction)
//        }
//    }
//    print(reducedDirs.array)
//    return reducedDirs.array
//}


//func directionsReduce(_ directions: [String]) -> [String] {
//    var reducedDirs = StringStack()
//
//    reducedDirs.push(directions[0])
//    for direction in directions[1...] {
//        if ((reducedDirs.length() == 0) || (!areO(direction, reducedDirs.peek())) {
//            reducedDirs.push(direction)
//        } else {
//            reducedDirs.pop()
//        }
//    }
//
//    return reducedDirs.array
//}

//directionsReduce(["WEST", "WEST", "NORTH", "SOUTH", "EAST", "WEST"])
//for k in thingsToRemoveArray {
//mainArray =  mainArray.filter {$0 != k}
//}

func dirReduc(_ arr: [String]) -> [String] {
    var result = [String]()
    var newArr = arr
    var end = result[arr.count - 1]
    var next = arr[0]
    var hold = 0
    print(next)

//    while newArr.count != 0 {
//        if end == "NORTH" && next == "SOUTH"{
//            var itemToRemove = [end, next]
//            for k in itemToRemove{
//                newArr = newArr.filter{$0 != k}
//            }
//        } else if end == "SOUTH" && next == "NORTH"{
//            var itemToRemove = [end, next]
//            for k in itemToRemove{
//                newArr = newArr.filter{$0 != k}
//            }
//        } else if end == "WEST" && next == "EAST" {
//            var itemToRemove = [end, next]
//            for k in itemToRemove{
//                newArr = newArr.filter{$0 != k}
//            }
//        } else if end == "EAST" && next == "WEST" {
//            var itemToRemove = [end, next]
//            for k in itemToRemove{
//                newArr = newArr.filter{$0 != k}
//            }
//        }
//
//
//
//    // your code
//
//}
    return newArr
}

dirReduc(["NORTH","WEST"])


//def dirReduc(arr):
//    #your code
//    result = ['default']
//    arr = arr
//    while (len(arr)!=0) :
//end = result[len(result)-1]
//        coming = arr[0]
//flag = 0
//print(end,coming)
//if end == "NORTH" and coming =="SOUTH" :
//            flag = 1
//        elif (end == "SOUTH" and coming == "NORTH") :
//            flag = 1
//        elif (end == "WEST" and coming == "EAST") :
//            flag = 1
//        elif (end == "EAST" and coming == "WEST") :
//            flag = 1
//if flag == 1 :
//            result = result[:-1]
//            arr = arr[1:]
//        else :
//            result.append(arr[0])
//            arr = arr[1:]
//print(result, arr)
//return result[1:]
