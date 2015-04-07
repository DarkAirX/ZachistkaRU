//V1.1 - By: Ghost - List of different units for spawning scripts
//[side_type] execvm "unit_list.sqf";
private ["_PARAM_SU35","_PARAM_Enemy"];

_PARAM_SU35 = "PARAM_SU35" call BIS_fnc_getParamValue;
_PARAM_Enemy = "PARAM_Enemy" call BIS_fnc_getParamValue;
if (_PARAM_Enemy == 2) then {_PARAM_Enemy = floor(random 2);};
switch _PARAM_Enemy do {

case 0: {

	///////////
	//Iranian UNITS
	/////////// "O_sniper_F","O_recon_M_F","O_recon_exp_F","O_recon_medic_F","O_recon_LAT_F","O_recon_TL_F","O_soldierU_AA_F","O_soldierU_AT_F","O_soldierU_LAT_F","O_soldierU_AR_F"
	
	ghst_side = WEST;

	ghst_menlist = ["rhsusf_army_ucp_squadleader","rhsusf_army_ucp_sniper","rhsusf_army_ucp_marksman","rhsusf_army_ucp_grenadier","rhsusf_army_ucp_javelin","rhsusf_army_ucp_teamleader","rhsusf_army_ucp_aa","rhsusf_army_ucp_riflemanat","rhsusf_army_ucp_riflemanat","rhsusf_army_ucp_autorifleman","rhsusf_army_ucp_sniper","rhsusf_army_ucp_marksman","rhsusf_army_ucp_grenadier","rhsusf_army_ucp_javelin","rhsusf_army_ucp_teamleader","rhsusf_army_ucp_aa","rhsusf_army_ucp_teamleader","rhsusf_army_ucp_riflemanat","rhsusf_army_ucp_marksman"];

	ghst_diverlist = ["rhsusf_army_ucp_rifleman","rhsusf_army_ucp_grenadier","rhsusf_army_ucp_teamleader","rhsusf_army_ucp_rifleman","rhsusf_army_ucp_grenadier","rhsusf_army_ucp_rifleman"]; //поставил вместо дайвером ванильных пиндосов простых
	
	ghst_specopslist = ["rhsusf_usmc_marpat_d_squadleader","rhsusf_usmc_marpat_d_sniper","rhsusf_usmc_marpat_d_marksman","rhsusf_usmc_marpat_d_javelin","rhsusf_usmc_marpat_d_teamleader","rhsusf_usmc_marpat_d_riflemanat","rhsusf_usmc_marpat_d_riflemanat","rhsusf_usmc_marpat_d_autorifleman_m249","rhsusf_usmc_marpat_d_stinger","rhsusf_army_ucp_driver","rhsusf_usmc_marpat_d_machinegunner","rhsusf_usmc_marpat_d_sniper","rhsusf_usmc_marpat_d_marksman"];

	ghst_crewmenlist = ["rhsusf_army_ucp_crewman"];
	
	ghst_patrolvehlist = ["rhsusf_m1025_d_m2","RHS_M2A2","RHS_M6","rhsusf_m1a1aimd_usarmy","RHS_M2A2","rhsusf_rg33_m2_d","RHS_M2A3_BUSKIII","rhsusf_m1a2sep1tuskid_usarmy"];

	ghst_convoyvehlist = ["RHS_M2A3_BUSKIII","rhsusf_M1078A1P2_B_d_fmtv_usarmy","rhsusf_m1025_d_Mk19","rhsusf_M1083A1P2_B_d_fmtv_usarmy","RHS_M2A2","RHS_M6","RHS_M2A3_BUSKIII","rhsusf_rg33_m2_d","RHS_M2A2","rhsusf_m1a1fep_d"];

	ghst_staticlist = ["RHS_M2StaticMG_D","B_Mortar_01_F"]; //тут миномет ванильный
	
	ghst_patrolboatlist = ["B_Boat_Armed_01_minigun_F"]; // лодки у пиндосов нет
	
	ghst_transport_heli_list = "RHS_UH60M_d";
	
	ghst_attack_heli_list = "RHS_AH64D";
	
	if (_PARAM_SU35 == 0) then {
	ghst_patrol_air_list = ["RHS_A10","RHS_A10"];
	} else {
	ghst_patrol_air_list = ["RHS_A10"];
	};
	
	ghst_commanderlist = ["rhsusf_army_ucp_driver","rhsusf_usmc_fr_marpat_d_light","rhsusf_usmc_fr_marpat_d_sniper"];
	
	ghst_ammobox_list = "Box_NATO_Ammo_F";
	
	};

case 1: {

	///////////
	//Greek UNITS
	///////////
	
	ghst_side = independent;

	ghst_menlist = ["I_soldier_F","I_Soldier_lite_F","I_soldier_AT_F","I_soldier_GL_F","I_soldier_LAT_F","I_soldier_exp_F","I_soldier_F","I_soldier_AR_F","I_soldier_repair_F","I_soldier_LAT_F","I_soldier_AR_F","I_soldier_M_F","I_soldier_AT_F","I_soldier_AA_F","I_soldier_F","I_soldier_TL_F","I_medic_F","I_soldier_GL_F","I_soldier_F"];

	ghst_diverlist = ["I_diver_f","I_diver_exp_f","I_diver_TL_f","I_diver_f","I_diver_exp_f","I_diver_f"];
	
	ghst_specopslist = ["I_soldier_F","I_Soldier_lite_F","I_soldier_GL_F","I_soldier_LAT_F","I_soldier_TL_F","I_medic_F","I_soldier_AR_F"];

	ghst_crewmenlist = ["I_crew_F"];
	
	ghst_patrolvehlist = ["I_MRAP_03_gmg_F","I_MRAP_03_hmg_F","I_APC_tracked_03_cannon_F","I_MBT_03_cannon_F","I_APC_Wheeled_03_cannon_F"];

	ghst_convoyvehlist = ["I_Truck_02_transport_F","I_MRAP_03_gmg_F","I_Truck_02_covered_F","I_APC_Wheeled_03_cannon_F","I_Ifrit_F","I_Truck_02_covered_F","I_MRAP_03_hmg_F","I_MRAP_03_F","I_Truck_02_transport_F"];

	ghst_staticlist = ["I_HMG_01_high_F","I_GMG_01_high_F","I_static_AT_F","I_static_AA_F"];
	
	ghst_patrolboatlist = ["I_Boat_Armed_01_minigun_F"];
	
	ghst_transport_heli_list = "I_Heli_Transport_02_F";
	
	ghst_attack_heli_list = "I_Heli_light_03_F";
	
	if (_PARAM_SU35 == 0) then {
	ghst_patrol_air_list = ["I_Plane_Fighter_03_AA_F","I_Plane_Fighter_03_CAS_F"];
	} else {
	ghst_patrol_air_list = ["JS_JC_SU35","I_Plane_Fighter_03_AA_F","I_Plane_Fighter_03_CAS_F"];
	};
	
	ghst_commanderlist = ["I_officer_F","I_Story_Colonel_F"];
	
	ghst_ammobox_list = "Box_IND_Ammo_F";
	
	};
	
};