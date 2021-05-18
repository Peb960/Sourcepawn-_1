#include <sourcemod>
#include <sdktools>
#include <clientprefs>
#include <sdkhooks>
#include <morecolors>

// ON PLUGIN START
public void OnPluginStart()
{
    // USER WRITES !TEST
    RegServerCmd("sm_test", Command_Test);
    RegConsoleCmd("sm_discord", Command_Discord);
}

// PRINTS TO CHAT
public Action Command_Test(int args)
{
    // PRINTS TO ALL CLIENTS CHATS
    CPrintToChatAll("you wrote a command");
    return Plugin_Handled;
}

// PRINTS TO THE USER 
public Action Command_Discord(int client, int args)
{
    // PRINTS THE USERS NAME (%N)
    CPrintToChat(client, "%N here is the Discord Link:(JKLOLNOOB)");
    return Plugin_Handled;
}