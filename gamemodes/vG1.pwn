
/////////////////////////////////////////Vault Beta 0.1///////////////////////////////////////////
#include <a_samp>
#include <dini>
#include <dudb>
#include <zcmd>
#include <sscanf>

#define Users "/Users/%s.ini"
#define DO_RANGE 300
#pragma unused ret_memcpy

#define WELCOME 0xCCF3FFFF


new Logged[MAX_PLAYERS];

main()
{
}


public OnGameModeInit()
{
    SetPlayerMarkerForPlayer( 42, 1, ( GetPlayerColor( 1 ) & 0xFFFFFF00 ) );
	EnableStuntBonusForAll(0);
	SetGameModeText("Vault Beta 0.1");
	ShowPlayerMarkers(0);
	
	AddPlayerClass(1, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(2, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(3, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(4, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(5, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(6, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(7,  1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(8,  1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(9,  1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(10, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(11, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(12, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(13, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(14, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(15, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(16, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(17, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(18, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(19, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(20, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(21, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(22,  1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(23,  1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(24,  1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(25, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(26, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(27, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(28, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(29, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(30, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(31, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(32, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(33, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(34, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(35, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(36, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(37,  1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(38,  1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(39,  1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(40, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(41, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(42, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(43, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(44, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(45, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(46, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(47, 1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(48,  1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(49,  1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);
	AddPlayerClass(50,  1959.8248,1343.0542,15.3746,89.7065,0,0,0,0,0,0);

	//Random vehicles (On Street) ///////////////////////////////
    AddStaticVehicle(522,2032.7450,1343.9429,10.8203,270.0026,157,0);
    AddStaticVehicle(445,2352.2402,1458.8047,19.6289,89.5951,216,0); //
	AddStaticVehicle(401,2352.2639,1480.0701,42.3865,90.5514,255,0); //
	AddStaticVehicle(405,2351.4604,1451.6737,42.3880,90.2886,200,0); //
	AddStaticVehicle(421,2191.2083,1800.3148,10.3878,180.2024,208,0);
	AddStaticVehicle(426,2039.5226,1201.1962,10.2449,181.0366,194,0); //
	AddStaticVehicle(506,2039.6802,1047.4468,10.2432,177.8884,238,0); //
	AddStaticVehicle(458,2132.7737,1022.5418,10.8203,89.2837,196,0); //
	AddStaticVehicle(533,2141.8391,1019.2498,10.8203,272.0029,212,0); //
	AddStaticVehicle(477,2133.0759,1028.9001,10.8203,90.2862,169,0);
    AddStaticVehicle(522,2309.1284,1519.1444,16.7879,179.7790,0,0); //
	AddStaticVehicle(400,1560.8899,-2247.5479,13.6401,90.1796,123,1); //
	AddStaticVehicle(404,1542.7490,-2211.8071,13.2879,179.5883,119,50); //
	AddStaticVehicle(410,1529.7560,-2211.2979,13.2119,179.2532,9,1); //
	AddStaticVehicle(458,1515.3879,-2211.9785,13.4292,179.7989,101,1); //
	AddStaticVehicle(479,1560.5643,-2318.6245,13.3442,89.9510,59,36); //
	AddStaticVehicle(492,1560.4518,-2338.4417,13.3287,89.4161,77,26); //
	AddStaticVehicle(496,1404.8268,-2224.4451,13.2632,180.7060,66,72); //
	AddStaticVehicle(500,1415.0166,-2224.4626,13.6540,179.9894,40,84); //
	AddStaticVehicle(507,1390.7406,-2261.7358,13.3713,359.8327,42,42); //
	AddStaticVehicle(516,1410.3856,-2262.1113,13.3809,359.6006,119,1); //
	AddStaticVehicle(517,1407.9651,-2364.3740,13.4018,359.3991,36,36); //
	AddStaticVehicle(526,1398.1530,-2364.8206,13.3135,0.6409,9,39); //
	AddStaticVehicle(529,1385.0345,-2364.5071,13.1791,359.4289,42,42); //
	
	return 1;
	
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 257.6718, -42.7579, 1002.0234);
 	SetPlayerInterior(playerid, 14);
	SetPlayerFacingAngle(playerid, 39.9302);
	SetPlayerCameraPos(playerid, 254.1718, -38.7579, 1003.5234);
	SetPlayerCameraLookAt(playerid, 257.6718, -42.7579, 1002.0234);
	return 1;
}


public OnPlayerConnect(playerid)
{
	
	Logged[playerid] = 0;
    new Name[MAX_PLAYER_NAME];
	new File[256];
    GetPlayerName(playerid, Name, sizeof(Name));
	format(File, sizeof(File), Users, Name);
    if (!dini_Exists(File))
    {
        ShowPlayerDialog(playerid, 1, DIALOG_STYLE_INPUT, "Registration","Enter the password to register","Register", "Cancel");
    }
	if(fexist(File))
    {
        ShowPlayerDialog(playerid, 2, DIALOG_STYLE_PASSWORD, "Login","Enter your password.", "Login", "Cancel");
    }
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
if (dialogid == 1)
    {
        new Name[MAX_PLAYER_NAME];
		new File[256];
        GetPlayerName(playerid, Name, sizeof(Name));
        format(File, sizeof(File), Users, Name);
        if(!response)
		return Kick(playerid);
        if (!strlen(inputtext))
		return ShowPlayerDialog(playerid, 1, DIALOG_STYLE_INPUT, "Registration","Enter the password to register","Register", "Cancel");
        dini_Create(File);
        dini_IntSet(File, "Password", udb_hash(inputtext));
        Logged[playerid] = 1;
        GivePlayerMoney(playerid, 50000);
    }
if (dialogid == 2)
    {
        new Name[MAX_PLAYER_NAME];
		new File[256];
        GetPlayerName(playerid, Name, sizeof(Name));
        format(File, sizeof(File), Users, Name);
        if(!response)
		return Kick(playerid);
        if (!strlen(inputtext))
		return ShowPlayerDialog(playerid, 2, DIALOG_STYLE_PASSWORD, "Login","Enter your password","Login", "Cancel");
        new tmp;
        tmp = dini_Int(File, "Password");
        if(udb_hash(inputtext) != tmp) {
            SendClientMessage(playerid, 0xFF6347AA, "Wrong Password.");
            ShowPlayerDialog(playerid, 2, DIALOG_STYLE_PASSWORD, "Login","Enter your password","Login", "Cancel");
        }
        else
        {
            Logged[playerid] = 1;
 			SendClientMessage(playerid,0xDDDDDDFF, "You have sucessfully logged in!");
	 		SpawnPlayer(playerid);

        }
    }
  return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}
public OnPlayerSpawn(playerid)
{
    SetPlayerColor( playerid, 0xE9E9E9FF );
    SetPlayerPos( playerid,1685.1169,-2241.0496,13.5469,180.5347 );
    SetPlayerInterior( playerid, 0 );
}


public OnPlayerDeath(playerid, killerid, reason)
{
	GivePlayerMoney(playerid, -100);
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{

}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}

