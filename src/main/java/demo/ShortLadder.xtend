package demo

import blang.engines.internals.ladders.TemperatureLadder
import java.util.List
import blang.runtime.SampledModel

class ShortLadder implements TemperatureLadder {
	
	override temperingParameters(List<Double> temperingParameters, List<SampledModel> initialStates, int nTemperatures) {
	
	}
	
}