package freechips.rocketchip.uintr

import freechips.rocketchip.config._
import freechips.rocketchip.diplomacy._
import freechips.rocketchip.subsystem._
import freechips.rocketchip.system._
import freechips.rocketchip.tile._
import freechips.rocketchip.devices.tilelink._

class WithCustomBootROM(resetAddress: BigInt, bootImgPath: String)
  extends Config((_, _, up) => { case BootROMLocated(x) =>
    up(BootROMLocated(x)).map(_.copy(hang = resetAddress, contentFileName = bootImgPath))
  })

class WithUIPI extends Config((_, _, _) => {
  case BuildRoCC => Seq((p: Parameters) => {
    val module = LazyModule(new UIPI(OpcodeSet.custom3)(p))
    module
  })
})

class UintrConfig extends Config(
  new WithNBigCores(4) ++
    new WithNExtTopInterrupts(6) ++
    new WithTimebase((BigInt(10000000))) ++ // 10 MHz
    new WithDTS("freechips.rocketchip-unknown", Nil) ++
    new WithUIPI ++
    new WithCustomBootROM(0x10000, "../common/boot/bootrom/bootrom.img") ++
    new WithDefaultMemPort ++
    new WithDefaultMMIOPort ++
    new WithDefaultSlavePort ++
    new WithoutTLMonitors ++
    new WithCoherentBusTopology ++
    new BaseSubsystemConfig
)

class UintrTestConfig extends Config(new DefaultConfig ++ new WithUIPI)