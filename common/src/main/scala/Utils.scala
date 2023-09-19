package freechips.rocketchip.uintr

import Chisel._

object UintrConsts {
  def uisteSizeBits = 3.U
}

class SUIRS extends Bundle {
  val en = Bool()
  val zero = UInt(47.W)
  val index = UInt(16.W)
}

class SUIST() extends Bundle {
  val en = Bool()
  val zero = UInt(7.W)
  val size = UInt(12.W)
  val base = UInt(44.W)
}

class CSRUintrIO extends Bundle {
  val suirs = new SUIRS()
  val suist = new SUIST()
}

class UISTE() extends Bundle {
  val uirs_idx = UInt(16.W)
  val zero2 = UInt(16.W)
  val vector = UInt(16.W)
  val zero1 = UInt(15.W)
  val valid = Bool()
}
