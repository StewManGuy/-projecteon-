---@alias VehicleStatistics { engine?: number, body?: number, fuel?: number }
---@alias ImpoundReason { reason?: string, retrievable?: number, price?: number, impounder?: string }
---@alias VehicleData { plate: string, type: string, location: string, model: number, impounded: boolean, statistics: VehicleStatistics, impoundReason?: ImpoundReason }