import UIKit

class Determinant{
    var det = [[Double]]()
    var size:Int = 0
    init(detArray d:[Double]){
        size = Int(sqrt(Float(d.count)))
        for i in 0..<size {
            det.append([Double]())
            for j in 0..<size {
                det[i].append(d[i*size+j])
            }
        }
    }
    func getAns() -> Double {
        var ans = 1.0
        var d:[[Double]] = det
        //三角化
        for i in 0..<size {
            for j in 0..<size {
                if i<j{
                    let buf = d[j][i]/d[i][i]
                    for k in 0..<size {
                        d[j][k] -= d[i][k] * buf
                    }
                }
                
            }
        }
        for i in 0..<size {
            ans *= d[i][i]
        }
        return ans
    }
}


var det = [1.0,1.0,1.0,1.0]
var test = Determinant(detArray: det)
print(test.getAns())
