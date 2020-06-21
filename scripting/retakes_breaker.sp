#include <sourcemod>
#include <sdktools>
#include <cstrike>
#include <retakes>

ConVar g_cvEnablebreaker = null;
ConVar g_cvEnableDoorOpener = null;

public Plugin myinfo =
    {
        name = "Retakes Breaker",
        author = "RoyZ",
        description = "Break windows/glasses and open all the door in Retakes",
        version = "1.0"}

public void OnPluginStart()
{
    LoadTranslations("retakes_breaker.phrases")
    g_cvEnablebreaker = CreateConVar("sm_retakes_breaker", "1.0", "Enable or Disable plugin. 1-Enable   0-Disable", _, true, 0.0, true, 1.0);
    g_cvEnableDoorOpener = CreateConVar("sm_retakes_breaker_dooropener", "1.0", "Enable or Disable auto open doors. 1-Enable   0-Disable", _, true, 0.0, true, 1.0);
    HookEvent("round_start", Event_OnRoundStart, EventHookMode_Pre);
    AutoExecConfig(true, "retakes_breaker");
}

public void Event_OnRoundStart(Handle event, const char[] name, bool dontBroadcast)
{

    if (g_cvEnablebreaker.BoolValue)
    {
        char currentMap[PLATFORM_MAX_PATH];
        GetCurrentMap(currentMap, sizeof(currentMap));

        int ent = -1;

        while ((ent = FindEntityByClassname(ent, "func_breakable")) != -1)
        {
            AcceptEntityInput(ent, "Break");
        }

        Retakes_MessageToAll("%t", "Breakable");

        while (((ent = FindEntityByClassname(ent, "prop_door_rotating")) != -1) && (g_cvEnableDoorOpener.BoolValue))
        {
            AcceptEntityInput(ent, "open");
        }

        Retakes_MessageToAll("%t", "Open");

        if (StrContains(currentMap, "de_mirage", false) == -1)
        {
            while ((ent = FindEntityByClassname(ent, "prop.breakable.01")) != -1)
            {
                AcceptEntityInput(ent, "break");
            }
            while ((ent = FindEntityByClassname(ent, "prop.breakable.02")) != -1)
            {
                AcceptEntityInput(ent, "break");
            }
        }
        else
        {
            if (StrContains(currentMap, "de_vertigo", false) == 1)
            {
                while ((ent = FindEntityByClassname(ent, "prop_dynamic")) != -1)
                {
                    AcceptEntityInput(ent, "Break");
                }
            }
        }
    }
}