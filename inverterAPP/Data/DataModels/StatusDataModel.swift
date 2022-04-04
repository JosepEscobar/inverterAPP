import Foundation

struct StatusDataModel {
    let acOutputActivePower: Int
    let acOutputApparentCurrent: Int
    let acOutputFrequency: Double
    let acOutputVoltage: Double
    let batteryCapacitypercent: Int
    let batteryChargingCurrent: Int
    let batteryChargingPower: Double
    let batteryDischargeCurrent: Int
    let batteryDischargePower: Double
    let batteryVoltage: Double
    let batteryVoltageFromScc: Double
    let busVoltage: Int
    let deviceStatus: String
    let gridFrequency: Double
    let gridPower: Int
    let gridVoltatge: Double
    let inverterHeatSinkTemperature: Int
    let outputLoadPercent: Int
    let pvInputCurrentForBattery: Int
    let pvInputPower: Int
    let pvInputVoltage: Double
}

