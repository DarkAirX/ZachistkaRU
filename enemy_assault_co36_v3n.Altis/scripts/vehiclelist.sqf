_vehicleList = [];
_namelist = [];
_vehicleList2 = [];
_namelist2 = [];

_cfgvehicles = configFile >> "cfgvehicles";

for "_i" from 0 to (count _cfgvehicles)-1 do {
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then {
		_wCName = configName(_vehicle);
		_wDName = getText(configFile >> "cfgvehicles" >> _wCName >> "displayName");
		_wModel = getText(configFile >> "cfgvehicles" >> _wCName >> "model");
		_wType = getNumber(configFile >> "cfgvehicles" >> _wCName >> "type");
		_wside = getnumber(configFile >> "cfgvehicles" >> _wCName >> "side");
		_wscope = getnumber(configFile >> "cfgvehicles" >> _wCName >> "scope");
		_wfaction = getText(configFile >> "cfgvehicles" >> _wCName >> "faction");
		_wPic =  getText(configFile >> "cfgvehicles" >> _wCName >> "picture");
		_wDesc = getText(configFile >> "cfgvehicles" >> _wCName >> "Library" >> "libTextDesc");	

		if (((_wCName iskindof "Tank_F") or (_wCName iskindof "StaticWeapon") or (_wCName iskindof "Car_F") or (_wCName iskindof "motorcycle")) && !(_wCName iskindof "Papercar") && !(_wCName iskindof "UGV_01_base_F") && (_wside == 0) && (_wscope == 2) && ((_wfaction == "rhs_faction_vpvo") or (_wfaction == "rhs_faction_vdv") or (_wfaction == "rhs_faction_vv") or (_wfaction == "rhs_faction_msv") or (_wfaction == "rhs_faction_vmf") or (_wfaction == "rhs_faction_rva") or (_wfaction == "rhs_faction_tv")) && (_wDName!="") && (_wModel!="")  && (_wpic!="")) then {
		/*
			if (_wfaction == "USMC") then {
				_wDName = _wDName + " Woodland";
			};
			if (_wfaction == "BIS_US") then {
				_wDName = _wDName + " Desert";
			};
			*/
			if !(_wDName in _namelist) then {
				_vehicleList = _vehicleList + [[_wCName,_wDName,_wPic,_wDesc]];
					_namelist = _namelist + [_wDName];
			};
		};
		if (((_wCName iskindof "StaticWeapon") or (_wCName iskindof "Car_F") or (_wCName iskindof "motorcycle")) && !(_wCName iskindof "Papercar") && !(_wCName iskindof "UGV_01_base_F") && (_wside == 0) && (_wscope == 2) && ((_wfaction == "rhs_faction_vpvo") or (_wfaction == "rhs_faction_vdv") or (_wfaction == "rhs_faction_vv") or (_wfaction == "rhs_faction_msv") or (_wfaction == "rhs_faction_vmf") or (_wfaction == "rhs_faction_rva") or (_wfaction == "rhs_faction_tv")) && (_wDName!="") && (_wModel!="")  && (_wpic!="")) then {
		/*
			if (_wfaction == "USMC") then {
				_wDName = _wDName + " Woodland";
			};
			if (_wfaction == "BIS_US") then {
				_wDName = _wDName + " Desert";
			};
			*/
			if !(_wDName in _namelist2) then {
				_vehicleList2 = _vehicleList2 + [[_wCName,_wDName,_wPic,_wDesc]];
					_namelist2 = _namelist2 + [_wDName];
			};
		};
	};
	/*if (_i % 10==0) then {
		hintsilent format["Loading Vehicle List... (%1)",count _vehicleList];
		sleep .0001;
};*/
};
hint "";
_namelist = nil;
_namelist2 = nil;
//adding custom ammobox for mortar rounds
//_vehicleList = _vehicleList + [["USOrdnanceBox_EP1","Mortar Ammo Box","","Box holds 50 Mortar Rounds"]];

ghst_vehiclelist = _vehicleList;
ghst_vehiclelist2 = _vehicleList2;

//publicvariable "ghst_vehiclelist";

hint "vehicle list ready";