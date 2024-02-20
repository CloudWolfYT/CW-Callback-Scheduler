# Callback Scheduler (Minecraft Data Pack)
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-2-orange.svg?)](#contributors-)
[![Discord](https://img.shields.io/badge/Discord-⛓-blue.svg)](https://discord.gg/AsHA7GgqqM)
[![Tutorial](https://img.shields.io/badge/Tutorial-▶-red.svg)](https://www.youtube.com/watch?v=Z6gcFwkdges)
[![Downloads](https://img.shields.io/github/downloads/CloudWolfYT/CW-Callback-Scheduler/total.svg)](https://github.com/CloudWolfYT/CW-Callback-Scheduler/releases)

<!-- ALL-CONTRIBUTORS-BADGE:END -->
<img src="images/social.png"
     alt="Social Image"
     style="float: left; margin-right: 10px;" />

## How to Use 📝
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
This datapack allows you to easily run commands at a later time AS one or more entities!<br>
Since /schedule does not keep entity context, this pack helps maintain context without requiring hardcoded scoreboard timers or custom schedule functions.

<!-- markdownlint-disable -->
<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->

## How it Works! 🔨
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
First modify the data storage to contain the command you want to run and the entities you want to run it at, then run the scheduler. That is it! At the designated time the commands will be ran as the designated entities (when the command is scheduled) <br>

Example:
<!-- markdownlint-enable -->
```
function cb:schedule {ticks:31,selector:"@e",command:"say hi @s"}
```
<!-- markdownlint-disable -->

This example will make every entity in your world say "hi (name)" after 31 ticks.

This pack uses the "gu" library to parse entity UUID integers into strings:
https://github.com/gibbsly/gu

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->


## Contributors 🧱
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/CloudWolfYT"><img src="https://avatars.githubusercontent.com/u/64243799?v=4" width="100px;" alt=""/><br /><sub><b>Cloud Wolf</b></sub></a><br /><a href="#" title="Project Creator">🔨</a></td>
    <td align="center"><a href="https://github.com/gibbsly"><img src="https://avatars.githubusercontent.com/u/49855662?v=4" width="100px;" alt=""/><br /><sub><b>gibbsly</b></sub></a><br /><a href="#" title="GU Library">💡</a></td>
  </tr>
</table>

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->
