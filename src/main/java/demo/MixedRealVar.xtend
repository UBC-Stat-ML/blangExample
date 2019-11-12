package demo

import org.eclipse.xtend.lib.annotations.Data
import blang.core.RealVar
import java.util.List
import blang.core.IntVar
import blang.types.StaticUtils

@Data
class MixedRealVar implements RealVar {
  protected val List<RealVar> components
  protected val IntVar selector
  
  new() {
    this(#[StaticUtils::latentReal, StaticUtils::latentReal], StaticUtils::latentInt)
  }
  
  new(List<RealVar> components, IntVar selector) {
    this.components = components
    this.selector = selector
  }
  
  static class SpikedRealVar extends MixedRealVar {
    new() {
      super(#[StaticUtils::fixedReal(0.0), StaticUtils::latentReal], StaticUtils::latentInt)
    }
    def RealVar continuousParameter() { components.get(1) }
    def IntVar isActive() { selector }  
  }
  
  override doubleValue() {
    if (selector.intValue < 0 || selector.intValue >= components.size)
      StaticUtils::invalidParameter
    return components.get(selector.intValue).doubleValue
  }
  
  override toString() { "" + doubleValue }
}