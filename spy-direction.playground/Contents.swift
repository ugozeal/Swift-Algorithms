import UIKit

func findRoutes(routes: [[String]]) -> String? {
    
    var firstArray = [String]()
    var secondArray = [String]()
    var resultArray = [String]()
    var res = ""

    
    for item in routes {
        firstArray.append(item[0])
        secondArray.append(item[1])
    }
    
    for i in 0..<firstArray.count {
         if !secondArray.contains(firstArray[i]) {
             res = firstArray[i]
            break;
         }
     }
   
    var bool = true;
    resultArray.append(res);

    while bool{
   
        for i in routes {
            
            if firstArray.contains(res) {

                if i[0] == res {
                    resultArray.append(i[1]);
                    res = i[1];
                    break;
                    
                }
            }else{
                bool = false;
            }
        }
    
    }
    
          
    print(resultArray);
    let unWrap = resultArray.joined(separator: ", ")

    return unWrap
}

findRoutes(routes: [["USA", "BRA"], ["JPN", "PHL"], ["BRA", "UAE"], ["UAE", "JPN"]])
