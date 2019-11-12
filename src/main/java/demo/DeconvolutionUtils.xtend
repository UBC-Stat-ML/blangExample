package demo

import java.util.List
import blang.core.RealVar

class DeconvolutionUtils {
  def static double dot(List<Integer> binaryVectors, List<? extends RealVar> proportions) {
    var sum = 0.0
    if (binaryVectors.size !== proportions.size)
      throw new RuntimeException
    for (i : 0 ..< binaryVectors.size)
      sum += binaryVectors.get(i) * proportions.get(i).doubleValue
    return sum
  }
  
  def static double sum(List<? extends RealVar> proportions) {
    var sum = 0.0
    for (proportion : proportions) 
      sum += proportion.doubleValue
    return sum
  }
}