[CS:GO] Retakes Breaker [V 1.2]
===================

[中文介绍](https://github.com/RoyZ-CSGO/Retakes_Breaker/blob/master/readme-zh-CN.md)


[Download](https://github.com/RoyZ-CSGO/Retakes_Breaker/releases/latest)


Description
-------------
A Sourcemod plugin , Working in [Retakes](https://github.com/splewis/csgo-retakes) mode, it will automatically destroy all entities that can be destroyed and automatically open all doors, making Retakes closer to the real situation.

Requirement
-------------
- [Sourcemod](https://github.com/alliedmodders/sourcemod)
- [Retakes Plugin](https://github.com/splewis/csgo-retakes)

Cvars
-------------
> - sm_retakes_breaker "1" (Default: "1" - Enable or Disable plugin.)
> - sm_retakes_breaker_dooropener "1" (Default: "1" - Enable or Disable auto open doors.)
> - sm_retakes_breaker_text "1" (Default: "1" - Enable or Disable Breaker Chat Notification)

Changelog
-------------
> - V 1.0 : Release of the plugin.
> - V 1.1 : Add Breaker Notification Switch(sm_retakes_breaker_text),add break func_breakable_surf(Thank [@borzaka](https://forums.alliedmods.net/member.php?u=300959))
> - V 1.2 : [「PR#1」](https://github.com/RoyZ-CSGO/Retakes_Breaker/pull/1)
Fixed logic that excluded Vertigo,
Added new Nuke's vents to the breaker,
Added new Cache's vents to the breaker
(By [@DeonduPreez](https://github.com/DeonduPreez))

[「PR#2」](https://github.com/RoyZ-CSGO/Retakes_Breaker/pull/2)
Added a Danish🇩🇰 translation for the plugin.
(By [@ksgoescoding](https://github.com/ksgoescoding))

Known issues
-------------
> - The wooden window in the de_mirage market cannot be destroyed

Credits
-------------
> - [@splewis](https://github.com/splewis) : Retakes Plugin
> - [@borzaka](https://forums.alliedmods.net/member.php?u=300959) : Proposer of func_breakable_surf and notification switch
> - [@DeonduPreez](https://github.com/DeonduPreez) : Fixed logic that excluded Vertigo,Added new Nuke's vents to the breaker,Added new Cache's vents to the breaker
> - [@ksgoescoding](https://github.com/ksgoescoding) : Added a Danish🇩🇰 translation for the plugin.
