_result = false;

// Проверка включения опции VIP
if (getNumber (missionConfigFile >> "BasePainting_Config" >> "VIP" >> "Enabled") isEqualTo 1) then {
    // Получение массива VIP
    _vips = getArray (missionConfigFile >> "BasePainting_Config" >> "VIP" >> "VIPS");
    
    // Проверка, является ли игрок VIP и находится ли он на своей территории
    if ((getPlayerUID player) in _vips && (call ExileClient_util_world_isInOwnTerritory)) then {
        _result = true;
    };
} else {
    // Если VIP отключен, проверка только на нахождение на своей территории
    if (call ExileClient_util_world_isInOwnTerritory) then {
        _result = true;
    };
};

_result
