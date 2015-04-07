// Create a mission entry for the server and client RPT file, easier to debug when you know what mission created the error
diag_log text ""; 
diag_log text format["|=============================   %1   =============================|", missionName]; // stamp mission name
diag_log text "";

enableSaving [false, false];
_null = [] execVM "scripts\misc\clearItems.sqf";
_null = [] execVM "scripts\misc\clearItemsBASE.sqf";													// clear items around base

execVM "R3F_LOG\init.sqf";

CIVILIAN setFriend [EAST, 1];
WEST setFriend [CIVILIAN, 1];
EAST setFriend [CIVILIAN, 1];
INDEPENDENT setFriend [CIVILIAN, 1];

// Wait until player is initialized
if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};

tf_no_auto_long_range_radio = true;

//_igiload = execVM "IgiLoad\IgiLoadInit.sqf";

execVM "shk_taskmaster.sqf";

// INS_revive initialize
[] execVM "INS_revive\revive_init.sqf";
