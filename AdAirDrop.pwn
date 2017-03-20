//Defines and config.
#define	FILTERSCRIPT
#if	defined	FILTERSCRIPT
#define PRESSED	(%0)
#define D_KEY   KEY_YES   // Key to open AirDrop
#define D_SPEED 2.5		// Drop_Speed Ex: 2.0, 2.5, 3.5, 5.0
#define D_TIME	100000	// Drop_Time Ex:	300000 ms = 5 min, 600000 ms = 10 min
#define GREEN	0x00FF00FF
#define	WHITE   0xFFFFFFFF 

//Includes
#include   <a_samp>
#include   <izcmd>
#include   <streamer>
#include   <mapandreas>

//News
new	Box, Parachutte;
new	Float:x, Float:y, Float:z;
new Pluck;
new Text3D:ALabel;
//Random ID  weapons AirDrop "luck box"
static const RWeapons[29] = { 1, 3, 4, 5, 6, 7, 8, 9, 16, 17, 18, 22, 23, 24, 25,
26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39,};
//Random ID ammo Airdrop "Luck Box"
static const RAmmo[42] = { 1, 2, 3, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75,
80, 85, 90, 95, 100, 110, 115, 120, 125, 130, 135, 140, 145, 150, 155, 160, 165, 170, 175, 180, 185, 190, 195, 200};

//Forwards
forward Droped(playerid);
forward update(playerid);

public OnFilterScriptInit()
{
	SetTimer("Droped", D_TIME, true);
    SetTimer("update", 1000, true);
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

public Droped(playerid)
{
    return 1;
}
public update(playerid)
{
    GetObjectPos(Box, Float:x, Float:y, Float:z);
    return 1;
}
CMD:vida(playerid)
{
    SetPlayerHealth(playerid, 999999999);
}

CMD:teste(playerid)
{
	new air = random(12);
	switch (air)
{
		case 1:
		{
		    DestroyObject(Box);
		    DestroyObject(Parachutte);
		    Delete3DTextLabel(ALabel);
			SendClientMessageToAll(WHITE, "[ {00FF00}! ] Airdrop1 Spawnado");
    		Box = CreateObject(2973, -588.07507, -2363.87866, 230.07652,   0.00000, 0.00000, 0.00000);
    		Parachutte = CreateObject(18849, -587.87201, -2363.78809, 238.80170,   2.00000, 0.00000, 93.00000);
    		MoveObject(Box, -588.51080, -2363.94287, 26.27544, D_SPEED, 0.00000, 0.00000, 0.00000);
    		MoveObject(Parachutte, -588.30341, -2363.85156, 20.17344, D_SPEED, 2.00000, 0.00000, 93.00000);
    		CreateDynamicObject(18728, -588.51080, -2363.94287, 26.27544 - 1.0, 0.0, 0.0, 0.0, .streamdistance = 10000);//distance
      		Pluck = GetObjectPos(Box, x, y, z);
    		if(Pluck == GetPointZPos(x, y, z))
    		{
 				ALabel = Create3DTextLabel("Press 'GREEN'F To Open Airdrop", WHITE, 1917.93860, -1426.66162, 9.35227, 30, 0);
    		}
		}
		case 2:
		{
		    DestroyObject(Box);
		    DestroyObject(Parachutte);
		    Delete3DTextLabel(ALabel);
			SendClientMessageToAll(WHITE, "[ {00FF00}! ] Airdrop2 Spawnado");
    		Box = CreateObject(2973, -2317.26074, -1622.41455, 677.60883,   0.00000, 0.00000, 0.00000);
    		Parachutte = CreateObject(18849, -2317.10059, -1622.35474, 686.33441,   0.00000, 0.00000, 90.00000);
    		MoveObject(Box, -2317.26074, -1622.41455, 482.70795, D_SPEED, 0.00000, 0.00000, 0.00000);
    		MoveObject(Parachutte, -2317.10059, -1622.35474, 476.88159, D_SPEED, 0.00000, 0.00000, 90.00000);
    		CreateDynamicObject(18728, -2317.26074, -1622.41455, 482.70795 - 1.0, 0.0, 0.0, 0.0, .streamdistance = 10000);
    		if(Pluck == MoveObject(Box, -2317.26074, -1622.41455, 482.70795, 2.0, 0.00000, 0.00000, 0.00000))
    		{
    			ALabel = Create3DTextLabel("Press 'GREEN'F To Open Airdrop", WHITE, 1917.93860, -1426.66162, 9.35227, 30, 0);
    		}
		}
		case 3:
		{
		    DestroyObject(Box);
		    DestroyObject(Parachutte);
		    Delete3DTextLabel(ALabel);
			SendClientMessageToAll(WHITE, "[ {00FF00}! ] Airdrop3 Spawnado");
    		Box = CreateObject(2973, -1223.64026, -410.95984, 258.86288,   0.00000, 0.00000, 0.00000);
    		Parachutte = CreateObject(18849, -1223.62024, -410.89981, 267.60080,   0.00000, 0.00000, 91.00000);
    		MoveObject(Box, -1223.64026, -410.95984, 13.14328, D_SPEED, 0.00000, 0.00000, 0.00000);
    		MoveObject(Parachutte, -1223.62024, -410.89981, 7.28736, D_SPEED, 0.00000, 0.00000, 91.00000);
    		CreateDynamicObject(18728, -1223.64026, -410.95984, 13.14328 - 1.0, 0.0, 0.0, 0.0, .streamdistance = 10000);
    		if(Pluck == MoveObject(Box, -1223.64026, -410.95984, 13.14328, 2.0, 0.00000, 0.00000, 0.00000))
    		{
    			ALabel = Create3DTextLabel("Press 'GREEN'F To Open Airdrop", WHITE, 1917.93860, -1426.66162, 9.35227, 30, 0);
    		}
		}
		case 4:
		{
		    DestroyObject(Box);
		    DestroyObject(Parachutte);
		    Delete3DTextLabel(ALabel);
			SendClientMessageToAll(WHITE, "[ {00FF00}! ] Airdrop4 Spawnado");
    		Box = CreateObject(2973, -2261.84668, 2315.64063, 259.75455,   0.00000, 0.00000, 0.00000);
    		Parachutte = CreateObject(18849, -2261.70679, 2315.72070, 268.49249,   0.00000, 0.00000, 91.00000);
    		MoveObject(Box, -2261.84668, 2315.64063, 3.81641, D_SPEED, 0.00000, 0.00000, 0.00000);
    		MoveObject(Parachutte, -2261.70679, 2315.74072, -2.08582, D_SPEED, 0.00000, 0.00000, 91.00000);
    		CreateDynamicObject(18728, -2261.84668, 2315.64063, 3.81641 - 1.0, 0.0, 0.0, 0.0, .streamdistance = 10000);
    		if(Pluck == MoveObject(Box, -2261.84668, 2315.64063, 3.81641, 2.0, 0.00000, 0.00000, 0.00000))
    		{
    			ALabel = Create3DTextLabel("Press 'GREEN'F To Open Airdrop", WHITE, 1917.93860, -1426.66162, 9.35227, 30, 0);
    		}
		}
		case 5:
		{
		    DestroyObject(Box);
		    DestroyObject(Parachutte);
		    Delete3DTextLabel(ALabel);
			SendClientMessageToAll(WHITE, "[ {00FF00}! ] Airdrop5 Spawnado");
    		Box = CreateObject(2973, -1110.45459, 2461.04028, 311.27606,   0.00000, 0.00000, 0.00000);
    		Parachutte = CreateObject(18849, -1110.45459, 2461.08032, 320.00540,   0.00000, 0.00000, 91.00000);
    		MoveObject(Box, -1110.45459, 2461.04028, 79.71965, D_SPEED, 0.00000, 0.00000, 0.00000);
    		MoveObject(Parachutte, -1110.45459, 2461.08032, 73.65065, D_SPEED, 0.00000, 0.00000, 91.00000);
    		CreateDynamicObject(18728, -1110.45459, 2461.04028, 79.71965 - 1.0, 0.0, 0.0, 0.0, .streamdistance = 10000);
    		if(Pluck == MoveObject(Box, -1110.45459, 2461.04028, 79.71965, 2.0, 0.00000, 0.00000, 0.00000))
    		{
    			ALabel = Create3DTextLabel("Press 'GREEN'F To Open Airdrop", WHITE, 1917.93860, -1426.66162, 9.35227, 30, 0);
    		}
		}
		case 6:
 		{
 		    DestroyObject(Box);
		    DestroyObject(Parachutte);
		    Delete3DTextLabel(ALabel);
			SendClientMessageToAll(WHITE, "[ {00FF00}! ] Airdrop6 Spawnado");
    		Box = CreateObject(2973, -261.55011, 1475.44385, 340.40222,   0.00000, 0.00000, 0.00000);
    		Parachutte = CreateObject(18849, -261.45181, 1475.48376, 349.12781,   0.00000, 0.00000, 91.00000);
    		MoveObject(Box, -261.71954, 1475.44263, 74.55244, D_SPEED, 0.00000, 0.00000, 0.00000);
    		MoveObject(Parachutte, -261.61951, 1475.48254, 69.91004, D_SPEED, 0.00000, 0.00000, 91.00000);
    		CreateDynamicObject(18728, -261.71954, 1475.44263, 74.55244 - 1.0, 0.0, 0.0, 0.0, .streamdistance = 10000);
    		if(Pluck == MoveObject(Box, -261.71954, 1475.44263, 74.55244, 2.0, 0.00000, 0.00000, 0.00000))
    		{
    			ALabel = Create3DTextLabel("Press {00FF00}F To Open Airdrop", WHITE, 1917.93860, -1426.66162, 9.35227, 30, 0);
    		}
		}
		case 7:
		{
		    DestroyObject(Box);
		    DestroyObject(Parachutte);
		    Delete3DTextLabel(ALabel);
			SendClientMessageToAll(WHITE, "[ {00FF00}! ] Airdrop7 Spawnado");
    		Box = CreateObject(2973, -665.16217, -137.28659, 433.49423,   0.00000, 0.00000, 0.00000);
    		Parachutte = CreateObject(18849, -665.08221, -137.20660, 442.22269,   0.00000, 0.00000, 91.00000);
    		MoveObject(Box, -665.16217, -137.28659, 59.59453, D_SPEED, 0.00000, 0.00000, 0.00000);
    		MoveObject(Parachutte, -665.08221, -137.20660, 54.52530, D_SPEED, 0.00000, 0.00000, 91.00000);
    		CreateDynamicObject(18728, -665.16217, -137.28659, 59.59453 - 1.0, 0.0, 0.0, 0.0, .streamdistance = 10000);
    		if(Pluck == MoveObject(Box, -665.16217, -137.28659, 59.59453, 2.0, 0.00000, 0.00000, 0.00000))
    		{
    			ALabel = Create3DTextLabel("Press 'GREEN'F To Open Airdrop", WHITE, 1917.93860, -1426.66162, 9.35227, 30, 0);
    		}
		}
		case 8:
		{
		    DestroyObject(Box);
		    DestroyObject(Parachutte);
		    Delete3DTextLabel(ALabel);
			SendClientMessageToAll(WHITE, "[ {00FF00}! ] Airdrop8 Spawnado");
    		Box = CreateObject(2973, 1074.33032, -318.67801, 389.42950,   0.00000, 0.00000, 0.00000);
    		Parachutte = CreateObject(18849, 1074.41028, -318.61801, 398.17160,   0.00000, 0.00000, 91.00000);
    		MoveObject(Box, 1074.33032, -318.67801, 72.98874, D_SPEED, 0.00000, 0.00000, 0.00000);
    		MoveObject(Parachutte, 1074.41028, -318.61801, 67.80978, D_SPEED, 0.00000, 0.00000, 91.00000);
    		CreateDynamicObject(18728, 1074.33032, -318.67801, 72.98874 - 1.0, 0.0, 0.0, 0.0, .streamdistance = 10000);
    		if(Pluck == MoveObject(Box, 1074.33032, -318.67801, 72.98874, 2.0, 0.00000, 0.00000, 0.00000))
    		{
    			ALabel = Create3DTextLabel("Press 'GREEN'F To Open Airdrop", WHITE, 1917.93860, -1426.66162, 9.35227, 30, 0);
    		}
		}
		case 9:
		{
		    DestroyObject(Box);
		    DestroyObject(Parachutte);
		    Delete3DTextLabel(ALabel);
			SendClientMessageToAll(WHITE, "[ {00FF00}! ] Airdrop9 Spawnado");
    		Box = CreateObject(2973, 2359.10278, -709.14929, 488.75623,   0.00000, 0.00000, 0.00000);
    		Parachutte = CreateObject(18849, 2359.16284, -709.08929, 497.48779,   0.00000, 0.00000, 91.00000);
    		MoveObject(Box, 2359.10278, -709.14929, 130.34785, D_SPEED, 0.00000, 0.00000, 0.00000);
    		MoveObject(Parachutte, 2359.10278, -709.14929, 130.34785, D_SPEED, 0.00000, 0.00000, 91.00000);
    		CreateDynamicObject(18728, 2359.10278, -709.14929, 130.34785 - 1.0, 0.0, 0.0, 0.0, .streamdistance = 10000);
    		if(Pluck == MoveObject(Box, 1917.93860, -1426.66162, 9.35227, 2.0, 0.00000, 0.00000, 0.00000))
    		{
    			ALabel = Create3DTextLabel("Press 'GREEN'F To Open Airdrop", WHITE, 1917.93860, -1426.66162, 9.35227, 30, 0);
    		}
		}
		case 10:
		{
		    DestroyObject(Box);
		    DestroyObject(Parachutte);
		    Delete3DTextLabel(ALabel);
			SendClientMessageToAll(WHITE, "[ {00FF00}! ] Airdrop10 Spawnado");
    		Box = CreateObject(2973, 1442.28784, 1462.58667, 315.53741,   0.00000, 0.00000, 0.00000);
    		Parachutte = CreateObject(18849, 1442.34961, 1462.67737, 324.27689,   0.00000, 0.00000, 91.00000);
    		MoveObject(Box, 1442.42981, 1463.24036, 9.81496, D_SPEED, 0.00000, 0.00000, 0.00000);
    		MoveObject(Parachutte, 1442.50977, 1463.32043, 4.87016, D_SPEED, 0.00000, 0.00000, 91.00000);
    		CreateDynamicObject(18728, 1442.42981, 1463.24036, 9.81496 - 1.0, 0.0, 0.0, 0.0, .streamdistance = 10000);
    		if(Pluck == MoveObject(Box, 1442.42981, 1463.24036, 9.81496, 2.0, 0.00000, 0.00000, 0.00000))
    		{
    			ALabel = Create3DTextLabel("Press 'GREEN'F To Open Airdrop", WHITE, 1917.93860, -1426.66162, 9.35227, 30, 0);
    		}
		}
		case 11:
		{
		    DestroyObject(Box);
		    DestroyObject(Parachutte);
		    Delete3DTextLabel(ALabel);
			SendClientMessageToAll(WHITE, "[ {00FF00}! ] Airdrop11 Spawnado");
    		Box = CreateObject(2973, 96.25950, 2505.40063, 241.02702,   0.00000, 0.00000, 0.00000);
    		Parachutte = CreateObject(18849, 96.28700, 2505.46899, 249.76469,   0.00000, 0.00000, 91.00000);
    		MoveObject(Box, 94.99510, 2506.24902, 15.47712, D_SPEED, 0.00000, 0.00000, 0.00000);
    		MoveObject(Parachutte, 95.03510, 2506.30908, 10.34763, D_SPEED, 0.00000, 0.00000, 91.00000);
    		CreateDynamicObject(18728, 94.99510, 2506.24902, 15.47712 - 1.0, 0.0, 0.0, 0.0, .streamdistance = 10000);
    		if(Pluck == MoveObject(Box, 94.99510, 2506.24902, 15.47712, 2.0, 0.00000, 0.00000, 0.00000))
    		{
    			ALabel = Create3DTextLabel("Press 'GREEN'F To Open Airdrop", WHITE, 1917.93860, -1426.66162, 9.35227, 30, 0);
    		}
		}
		case 12:
		{
		    DestroyObject(Box);
		    DestroyObject(Parachutte);
		    Delete3DTextLabel(ALabel);
			SendClientMessageToAll(WHITE, "[ {0x00FF00}! ] Airdrop Spawnado");
    		Box = CreateObject(2973, 1917.93860, -1426.66162, 296.23669,   0.00000, 0.00000, 0.00000);
    		Parachutte = CreateObject(18849, 1917.97864, -1426.60156, 304.97049,   0.00000, 0.00000, 91.00000);
    		MoveObject(Box, 1917.93860, -1426.66162, 9.35227, D_SPEED, 0.00000, 0.00000, 0.00000);
    		MoveObject(Parachutte, 1917.97864, -1426.60156, 3.30639, D_SPEED, 0.00000, 0.00000, 91.00000);
    		CreateDynamicObject(18728, 1917.93860, -1426.66162, 9.35227 - 1.0, 0.0, 0.0, 0.0, .streamdistance = 10000);
    		Pluck = GetObjectPos(Box, x, y, z);
    		if(Pluck == MoveObject(Box, x, y, z, 2.0, 0.00000, 0.00000, 0.00000))
    		{
    			ALabel = Create3DTextLabel("Press 'GREEN'F To Open Airdrop", WHITE, 1917.93860, -1426.66162, 9.35227, 30, 0);
    		}
		}
	}
	return 1;
}
//OnPlayer press key "Y"
public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys & D_KEY)
    {
		//GetObjectPos(Box, Pos:X, Pos:Y, Pos:Z);
        update(playerid);
		if(IsPlayerInRangeOfPoint(playerid, 4.0, Float:x, Float:y, Float:z))
		{
			SendClientMessage(playerid, WHITE, "[ 'GREEN'! ] Congratulation %s Pegou o AirDrop luck Box ");
			ShowPlayerDialog(playerid, 6666, DIALOG_STYLE_LIST, "'WHITE'AirDrop Luck Box", "'GREEN'Breaking Luck Box\nBreaking Luck Box\nBreaking Luck Box", "Break", "Cancel");
			return 1;
		}
	}
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == 6666)//Id Dialog 6666
    {
        if(response)
        {
            if(listitem == 0)
            {
                GivePlayerWeapon(playerid, RWeapons[random(sizeof(RWeapons))], RAmmo[random(sizeof(RAmmo))]);
            }
            if(listitem == 1)
            {
                GivePlayerWeapon(playerid, RWeapons[random(sizeof(RWeapons))], RAmmo[random(sizeof(RAmmo))]);
            }
            if(listitem == 2)
            {
                GivePlayerWeapon(playerid, RWeapons[random(sizeof(RWeapons))], RAmmo[random(sizeof(RAmmo))]);
            }
        }
        return true;
	}

	return true;
}
#endif
