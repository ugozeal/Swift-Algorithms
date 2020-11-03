import UIKit

func markdownParser(_ markdown: String) -> String {
    var array = [String]()
    let word1 = markdown.replacingOccurrences(of: "#", with: "")
    let trimmed = word1.trimmingCharacters(in: .whitespacesAndNewlines)
    var tag = ""
    var result = ""
    var markArray = [String]()
    markArray.append(markdown)
//    if markArray.count == 1 || markArray.count > 6 || markArray.first != "#"{
//        return markdown
//    }
    
    
    for n in markdown {
        if n == "#"{
            array.append(String(n))
        }
    }
    
    if markdown.contains("# "){
        print ("yes")
    }else{
        print(markdown)
        return markdown
    }
    
    tag = "h\(array.count)"
    result = "<\(tag)>\(trimmed)</\(tag)>"
    
  print(result)
  return result
}

markdownParser("## Header")
markdownParser("#Invalid")
markdownParser("breakd # for out,         people")
