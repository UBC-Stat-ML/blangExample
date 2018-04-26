package demo

import java.util.List
import briefj.collections.UnorderedPair
import java.util.ArrayList

class Functions {
	def List<UnorderedPair<Integer, Integer>> edges (int N){
		val result = new ArrayList
		for (int i = 0 ..< N){
			for (int j = 0 ..< N-1){
				result.add.(N*i+j, N*i+j+1)
			}
			result.add N*i,N*i+N-1
		}
		
		for (int j = 0 ..< N){
			for (int i = 0 ..< N-1){
				result.add.(N*i+j, N*(i+1)+j)
			}
			result.add (j,N*(N-1)+j)
		}
			
		return result
	}
}

