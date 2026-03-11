# Playing Sounds

Now let's add **sound effects and music** to our game.

All audio assets used in this tutorial are **CC0** and were obtained from  
[freesound](https://freesound.org/).

---

## Health Loss Sound

This sound will play when a meteor reaches the end of the screen.

Update the behaviour `behaviours/meteor.lua`:

```lua
return {
	init = function(state)
		sucata.scene.add_tag(state, "meteor")

		state.speed = state.speed or math.random(100, 200)
		state.health = state.health or math.random(1, 5)
		state.force_y = state.speed
	end,

	tick = function(state)
		if state.y > 540 then
			sucata.events.emit("meteor_reached", state)

			sucata.audio.play({
				sound = "src://sounds/lose.ogg"
			})

			sucata.scene.destroy(state)
		end

		state.atlas_x = state.health - 1
	end
}
```

> **Note**
> `src://` represents the **root directory of the project**.
> Use this prefix whenever referencing files inside the project.

---

## Shooting Sound

This sound will play when the player fires a bullet.

Update `behaviours/bullet.lua`:

```lua
return {
	init = function(state)
		state.speed = state.speed or 400
		state.force_y = -state.speed

		-- Play shooting sound when the bullet is spawned
		sucata.audio.play({
			sound = "src://sounds/shoot.ogg"
		})
	end,
	...
}
```

---

## Meteor Hit Sound

Now we will add a sound effect when a meteor is hit by a bullet.

Update `behaviours/bullet.lua`:

```lua
return {
	tick = function(state)
		local meteors = sucata.scene.get_entities_by_tag("meteor")

		for _, id in ipairs(meteors) do
			local meteor = sucata.scene.find_by_id(id)

			if meteor and sucata.math.overlapping({
				x = state.x - 8,
				y = state.y - 8,
				width = 16,
				height = 16
			}, {
				x = meteor.x - 16,
				y = meteor.y - 16,
				width = 32,
				height = 32
			}) then
				health.remove(meteor)

				if meteor.health <= 0 then
					sucata.events.emit("meteor_destroyed", meteor)
					sucata.scene.destroy(meteor)
				end

				-- Play shooting sound when the meteor is hitted
				sucata.audio.play({
					sound = "src://sounds/explosion.ogg"
				})

				sucata.scene.destroy(state)
				break
			end
		end
	end
}
```

---

## Playing Music

Now we will add **background music** to the game.

Create a new behaviour `behaviours/music.lua`:

```lua
return {
	init = function(state)
		if state.music then
			state.music_id = sucata.audio.play({
				sound = state.music,
				loop = true,
				volume = 0.5
			})
		end
	end
}
```

Register the behaviour in `behaviours/init.lua`:

```lua id="e5vwy2"
return {
	...
	Music = require("behaviours.music"),
}
```

Now create an entity responsible for playing the background music.

Create `entities/music.lua`:

```lua id="h53grq"
local function music()
	return {
		state = {
			music = "src://sounds/music.ogg"
		},

		behaviours = {
			Behaviours.Music
		}
	}
end

return music
```

Finally, spawn the music entity in `main.lua`:

```lua
local music = require("entities.music")

sucata.scene.spawn(music())
```

The background music will now **play in a loop** while the game is running.
