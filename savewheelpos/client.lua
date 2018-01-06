Citizen.CreateThread(function()
    local angle = 0.0
    local speed = 0.0
    while true do
        Citizen.Wait(0)
        local veh = GetVehiclePedIsUsing(PlayerPedId())
        if DoesEntityExist(veh) then
            local tempangle = GetVehicleSteeringAngle(veh)
            if tempangle > 10.0 or tempangle < -10.0 then
                angle = tempangle
            end
            speed = GetEntitySpeed(veh)
            if speed < 2.0 and DoesEntityExist(GetVehiclePedIsIn(PlayerPedId(), true)) then
                SetVehicleSteeringAngle(GetVehiclePedIsIn(PlayerPedId(), true), angle)
            end
        end
    end
end)
