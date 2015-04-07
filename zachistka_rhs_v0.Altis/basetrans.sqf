/*
// Put the following line in the vehicle you want to make exclusive:
handle = [this, 5, 3, 0, false, false, "this addEventHandler ['GetIn', {_this execVM 'basetrans.sqf'}];"] execVM "vehicles.sqf"; this addEventHandler ["GetIn", {_this execVM "basetrans.sqf"}];"; this addEventHandler ["GetIn", {_this execVM "ourvecs.sqf"}];
*/

//if (isServer) exitWith {};

_vehicle = _this select 0;
_seat = _this select 1;
_player = _this select 2;
_BaseTransport = true;

if (_BaseTransport) then {
	_vehicle vehicleChat "Транспорт передвижения по базе. Возвращается сразу на исходную через 30сек.";
};