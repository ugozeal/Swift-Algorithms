import UIKit
/*
 Complete the 'pointsBelong' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 * 1. INTEGER x1
 * 2. INTEGER y1
 * 3. INTEGER ×2
 * 4. INTEGER y2
 * 5. INTEGER X3
 * 6. INTEGER у3
 * 7. INTEGER xp
 * 8. INTEGER yp
 * 9. INTEGER xa
 * 10. INTEGER yq
 */


///Solution one
func pointsBelong(x1: Int, y1: Int, x2: Int, y2: Int, x3: Int, y3: Int, xp: Int, yp: Int, xq: Int, yq: Int) -> Int {
    let A = calculateArea(x1: x1, y1: y1, x2: x2, y2: y2, x3: x3, y3: y3)
    let A2 = calculateArea(x1: x1, y1: y1, x2: xp, y2: yp, x3: x3, y3: y3)
    let A1 = calculateArea(x1: xp, y1: yp, x2: x2, y2: y2, x3: x3, y3: y3)
    let A3 = calculateArea(x1: x1, y1: y1, x2: x2, y2: y2, x3: xp, y3: yp)
    
    let A4 = calculateArea(x1: xq, y1: yq, x2: x2, y2: y2, x3: x3, y3: y3)
    let A5 = calculateArea(x1: x1, y1: y1, x2: xq, y2: yq, x3: x3, y3: y3)
    let A6 = calculateArea(x1: x1, y1: y1, x2: x2, y2: y2, x3: xq, y3: yq)
    
    let p = A1 + A2 + A3
    let q = A4 + A5 + A6
    
    if A == 0 {
        return 0
    } else if A == p && A != q {
        return 1
    } else if A != p && A == q {
        return 2
    } else if A == p && A == q {
        return 3
    } else if A != p && A != q {
        return 4
    } else {
        return 0
    }
}

func calculateArea(x1: Int, y1: Int, x2: Int, y2: Int, x3: Int, y3: Int) -> Int {
    return abs((x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2)) / 2)
}



/// Solution 2

func length(x1: Int, y1: Int, x2: Int, y2: Int) -> Double {
    return sqrt(pow(Double(x1 - x2), 2) + pow(Double(y1 - y2), 2))
}

func areaTriangle(x1: Int, y1: Int, x2: Int, y2: Int, x3: Int, y3: Int) -> Double {
    return abs((Double(x1) * Double(y2 - y3) + Double(x2) * Double(y3 - y1) + Double(x3) * Double(y1 - y2)) / 2.0)
}

func pointsBelongs(x1: Int, y1: Int, x2: Int, y2: Int, x3: Int, y3: Int, xp: Int, yp: Int, xq: Int, yq: Int) -> Int {
    let AB = length(x1: x1, y1: y1, x2: x2, y2: y2)
    let BC = length(x1: x2, y1: y2, x2: x3, y2: y3)
    let AC = length(x1: x1, y1: y2, x2: x3, y2: y3)
    if AB + AC > BC && BC + AC > AB && AB + BC > AC {
        let areaABP = areaTriangle(x1: x1, y1: y1, x2: x2, y2: y2, x3: xp, y3: yp)
        let areaACP = areaTriangle(x1: x1, y1: y1, x2: x3, y2: y3, x3: xp, y3: yp)
        let areaBCP = areaTriangle(x1: x3, y1: y3, x2: x2, y2: y2, x3: xp, y3: yp)
        let areaABC = areaTriangle(x1: x1, y1: y1, x2: x2, y2: y2, x3: x3, y3: y3)
        
        let p_inside = areaABC == (areaABP + areaACP + areaBCP)
        
        let areaABQ = areaTriangle(x1: x1, y1: y1, x2: x2, y2: y2, x3: xq, y3: yq)
        let areaACQ = areaTriangle(x1: x1, y1: y1, x2: x3, y2: y3, x3: xq, y3: yq)
        let areaBCQ = areaTriangle(x1: x3, y1: y3, x2: x2, y2: y2, x3: xq, y3: yq)
        
        let q_inside = areaABC == (areaABQ + areaACQ + areaBCQ)
        
        if p_inside && !q_inside {
            return 1
        }
        
        if !p_inside && q_inside {
            return 2
        }
        
        if q_inside {
            return 3
        }
        return 4
    }
    return 0
}

pointsBelongs(x1: 3, y1: 1, x2: 7, y2: 1, x3: 5, y3: 5, xp: 1, yp: 1, xq: 2, yq: 2)
pointsBelong(x1: 3, y1: 1, x2: 7, y2: 1, x3: 5, y3: 5, xp: 1, yp: 1, xq: 2, yq: 2)
