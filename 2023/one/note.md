# notes for Day 1, 2023

spent a good deal of time setting up lua and the lua language server (one of the maintainers keeps a [configuration flag](https://github.com/LuaLS/lua-language-server/issues/546#issuecomment-846784935) for an arbitrary lint rule enabled because ... that was the standard for the project they were working on the time). how silly!

part one was pretty trivial, took me some time to figure out lua but i got it. i also misread the question a bit but it didn't derail me too much.

part two took an expected turn, expected as in i noticed it, not expected as in i organized my code to anticipate it. from what i understand that is par for the advent of code course.

seemed simple enough, but there's a trick! threeeight counts as 38, and all other overlapping numbers follow suit. my naive solution assumed they'd be there in whole, but a look at the input should have alerted me right away, as it's right there, on the third line. gonna have to brainstorm a bit, lua doesn't provide the abstractions to deal with something like this (i think so, at least).

got it, it was only a few lines of compound words. no need for anything fancy.
