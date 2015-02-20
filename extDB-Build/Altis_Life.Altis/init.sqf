StartProgress = false;
enableSaving[false,false];

/* Initialize the Logistics system */
execVM "R3F_LOG\init.sqf";

/* Initialize the Life system */
life_versionInfo = "Altis Life RPG v4.0";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

StartProgress = true;
