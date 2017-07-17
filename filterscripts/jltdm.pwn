//[FS]Join/Leave Textdraw Message by RazR
#include <a_samp>
//----------------------------------------------------------------------
#if defined FILTERSCRIPT

#else

new Text:JLtext;
forward TDTime();

main()
{
	print("\n----------------------------------");
	print("Leave/Join Textdraw Message by RazR");
	print("----------------------------------\n");
}
#endif
//----------------------------------------------------------------------
public OnPlayerConnect(playerid)
{
    new pName[24];
    new string[128];
    GetPlayerName(playerid, pName, 24);
    format(string, 128,"~w~%s has joined", pName);
	JLtext = TextDrawCreate(508.0, 430.0," ");
 	TextDrawUseBox(JLtext, 1);
 	TextDrawBoxColor(JLtext,0x00000066);
    TextDrawLetterSize(JLtext, 0.3 ,1.0);
    TextDrawSetShadow(JLtext, 1);
	TextDrawSetString(JLtext, string);
	TextDrawShowForAll(JLtext);
	SetTimer("TDTime",5000,false);
    return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    new pName[24];
    new string[128];
    GetPlayerName(playerid, pName, 24);
    switch(reason)
    {
    	case 0: format(string, 128, "~w~%s timed out", pName);
     	case 1: format(string, 128, "~w~%s has left", pName);
      	case 2: format(string, 128, "~w~%s (Kicked/Banned)", pName);
    }
    TextDrawSetString(JLtext, string);
    TextDrawShowForAll(JLtext);
    SetTimer("TDTime",5000,false);
    return 1;
}

public TDTime()
{
    TextDrawHideForAll(JLtext);
    return 1;
}
