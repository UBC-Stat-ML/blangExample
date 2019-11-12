package assign

import org.eclipse.xtend.lib.annotations.Data
import blang.core.RealVar
import blang.core.IntVar
import blang.types.StaticUtils

@Data
class SpikedRealVar implements RealVar {
    val IntVar selected = StaticUtils::latentInt
    val RealVar continuousPart = StaticUtils::latentReal

    override doubleValue() {
        if (selected.intValue < 0 || selected.intValue > 1)
            StaticUtils::invalidParameter
        if (selected.intValue == 0) return 0.0
        else return continuousPart.doubleValue
    }
    
    override toString() { "" + doubleValue }
}