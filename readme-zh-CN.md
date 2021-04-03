[CS:GO] Retakes Breaker [V 1.1]
===================

[English Readme](https://github.com/RoyZ-CSGO/Retakes_Breaker/blob/master/readme.md)

[下载](https://github.com/RoyZ-CSGO/Retakes_Breaker/releases/latest)


描述
-------------
一个 Sourcemod 插件 , 仅在 [回防](https://github.com/splewis/csgo-retakes) 模式下工作, 它将自动在每局开局时破坏所有可破坏实体（玻璃、铁板等等）并会自动打开所有的门，以使得回防模式更加贴近实战。

需求
-------------
- [Sourcemod](https://github.com/alliedmodders/sourcemod)
- [Retakes Plugin](https://github.com/splewis/csgo-retakes)

可控制变量
-------------
> - sm_retakes_breaker "1" (默认: "1" - 启用或禁用插件。)
> - sm_retakes_breaker_dooropener "1" (默认: "1" - 启用或禁用自动开门。)
> - sm_retakes_breaker_text "1" (Default: "1" - 启用或禁用聊天中的消息通知)

更新日志
-------------
> - V 1.0 : 插件首次发布
> - V 1.1 : 添加聊天消息通知开关(sm_retakes_breaker_text)，添加对func_breakable_surf的破坏(感谢 [@borzaka](https://forums.alliedmods.net/member.php?u=300959))
> - V 1.2 : [「PR#1」](https://github.com/RoyZ-CSGO/Retakes_Breaker/pull/1) 修复排除殒命大厦地图的逻辑，更新对核子危机和死城之谜地图的支持(由 [@DeonduPreez](https://github.com/DeonduPreez)编写)

已知问题
-------------
> - 荒漠迷城地图中，商店的木窗无法被破坏。

感谢
-------------
> - [@splewis](https://github.com/splewis) : 回防插件作者
> - [@borzaka](https://forums.alliedmods.net/member.php?u=300959) : 破坏func_breakable_surf 和 聊天开关功能 的提议者
> -  [@DeonduPreez](https://github.com/DeonduPreez) : 修复排除殒命大厦地图的逻辑，更新对核子危机和死城之谜的支持