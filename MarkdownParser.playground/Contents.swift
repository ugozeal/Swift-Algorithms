import UIKit

//let markdown: String = ...
//let parser = MarkdownParser()
//let html = parser.html(from: markdown)

func markdownParser(_ markdown: String) -> String {
//    var array = [String]()
//    let count = array.count
//    let word1 = markdown.replacingOccurrences(of: "#", with: "")
//    let word = word1.replacingOccurrences(of: " ", with: "")
//
//    for n in markdown {
//        if n == "#" && markdown.contains("# "){
//            array.append(String(n))
//
//        } else {
//            return markdown
//        }
//    }
//
//    if markdown.contains("# "){
//        print ("yes")
//    }else{
//        return markdown
//    }
//
//    var tag = "h\(count)"
//    print (array.count)
//    var result = "<\(tag)>\(word)<\(tag)>"
//    print(word)
//    print(count)
//
//
//  return result
    var array = [String]()
        //let count = array.count
        let word1 = markdown.replacingOccurrences(of: "#", with: "")
        let trimmed = word1.trimmingCharacters(in: .whitespacesAndNewlines)
    var markArray = [String]()
    markArray.append(markdown)
//    if markArray.count == 1 || markArray.count > 6 || markArray[0] != "#"{
//        return markdown
//    }
        //let word = word1.replacingOccurrences(of: " ", with: "")
        var tag = ""
        var result = ""
        
        for n in markdown {
            if n == "#"{
                array.append(String(n))
            }
        }
        
        if markdown.contains("# "){
            print ("yes")
        }else{
            return markdown
        }
        
        tag = "h\(array.count)"
        //print (array.count)
        result = "<\(tag)>\(trimmed)</\(tag)>"
    //    print(word)
    //    print(count)
        
      
      return result
}

markdownParser("## Header")
markdownParser("#Invalid")
