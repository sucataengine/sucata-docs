require("config")

Behaviours = require("behaviours")

local music = require("entities.music")
sucata.scene.spawn(music())

local game_manager = require("entities.game_manager")
sucata.scene.spawn(game_manager)

local Player = require("entities.player")
sucata.scene.spawn(Player(480, 500))

local meteor = require("entities.meteor")
sucata.scene.spawn(meteor(300, 100))
