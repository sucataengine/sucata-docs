# Adding textures

 In this section we will add textures into our game, will add texture to the player, meteor and the bullet

 You can used the assets we are using downloading from [here](https://codeberg.org/sucata/meteors-sucata/src/branch/main/sprites) 

 ## Bullet texture

 Let's add the simplest texture, that is the bullet, so let's just update de state in `entities/bullet.lua`:

 ```lua
local function bullet(x,y)
	return {
		state = {
			x = x,
			y = y,
			texture = "src://sprites/bullet.png", -- Add the path for the texture
			width = 16, -- Add the width of the bullet
			height = 16 -- add the height of the bullet
		},
		behaviours = {
			Behaviours.Bullet, 
			Behaviours.ApplyForces, 
			Behaviours.DrawSprite, 
		}
	}
end

 return bullet
```

 > the `src://` is the root of the project, so use it to every path you need to put in sucata

 The DrawSprite behaviour have some behaviours that we expect, as render texture, so just we declare in the state will show already

 ![](./images/bullet-texture.png)

 ## Meteor texture

 in the meteor texture we have some tweaks, i want to meteor texture changes as the health of the meteor, first let declare the texture on the entity, in `entities/meteor.lua`:

 ```lua
local function meteor()
	return {
		state = {
			y = -16,
			texture = "src://sprites/meteor.png", -- Add the meteor texture path
			atlas_size = 8, -- Atlas size will split the texture into many 8x8 textures
		},
		behaviours = {
			Behaviours.RandomStartPosition, 
			Behaviours.Meteor,
			Behaviours.ApplyForces,
			Behaviours.DrawSprite,
		}
	}
end

 return meteor
```

 then into the meteor behaviour lets set the atlas_x, that is the coordinate of the texture to use, in `behaviours/meteor.lua`:

 ```lua
return {
	init = function(state)
		sucata.scene.add_tag(state, "meteor") 
		state.speed = state.speed or math.random(100, 200)
		state.health = state.health or math.random(1, 5) 
		state.force_y = state.speed
	end,
	tick = function (state)
		if state.y > 540 then
			sucata.events.emit("meteor_reached", state)
			sucata.scene.destroy(state)
		end

 		state.atlas_x = state.health - 1 -- Sets the atlas_x in the state to be the health - 1
	end
}
```

 Should be like this:

 ![](./images/meteor-texture.gif)