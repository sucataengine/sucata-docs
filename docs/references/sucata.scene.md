# sucata.scene

The scene module of the Sucata.

---

## Behaviour

Represents an script that changes the entity state

**fields**

- tick? `function(state)`  
  The tick function called every frame.  
  Receives `state` as parameter.

- draw? `function(state)`  
  The draw function called every frame.  
  Receives `state` as parameter.

- free? `function(state)`  
  The function called when the entity is destroyed.  
  Receives `state` as parameter.

- init? `function(state)`  
  The function called when the entity is spawned.  
  Receives `state` as parameter.

---
## Entity

Represents a game object in the scene.

An `Entity` can contain state and behaviours

**fields**

- state `table`  
  The unique state of the entity

- behaviours? `Behaviour[]`  
  The list of behaviours that entity will execute

---

## sucata.scene.load_scene

Loads a scene with the given entities.

**parameters**

- entities `Entity[]` - Array of entity tables to load into the scene  

---

## sucata.scene.spawn

Spawns an entity in the scene.

**parameters**

- entity `Entity` - The entity table to spawn  

**return**

- entity_id `string` - The ID of the spawned entity  

---

## sucata.scene.spawns

Spawns multiple entities in the scene.

**parameters**

- entities `Entity[]` - Array of entity tables to spawn  

**return**

- entity_ids `string[]` - Array of IDs of the spawned entities  

---

## sucata.scene.find_by_id

Finds an entity by its ID.

**parameters**

- entity_id `string` - The ID of the entity to find  

**return**

- entity `Entity | nil` - The entity table or `nil` if not found  

---

## sucata.scene.destroy

Destroys an entity from the scene.

**parameters**

- entity_or_id `Entity | string` - The entity table or entity ID to destroy  

**return**

- success `boolean` - Whether the entity was successfully destroyed  

---

## sucata.scene.destroys

Destroys multiple entities from the scene.

**parameters**

- entities `Entity[]` - Array of entity tables to destroy  

**return**

- undestroyed_ids `string[]` - Array of IDs of entities that could not be destroyed  

---

## sucata.scene.add_tag

Adds a tag to an entity.

**parameters**

- entity_or_id `Entity | string` - The entity table or entity ID  
- tag `string` - The tag to add  

**return**

- success `boolean` - Whether the tag was successfully added  

---

## sucata.scene.has_tag

Checks if an entity has a tag.

**parameters**

- entity_or_id `Entity | string` - The entity table or entity ID  
- tag `string` - The tag to check  

**return**

- success `boolean` - Whether the entity has the tag  

---

## sucata.scene.remove_tag

Removes a tag from an entity.

**parameters**

- entity_id `string` - The ID of the entity  
- tag `string` - The tag to remove  

**return**

- success `boolean` - Whether the tag was successfully removed  

---

## sucata.scene.get_entities

Gets all entity IDs in the scene.

**return**

- entity_ids `string[]` - Array of all entity IDs in the scene  

---

## sucata.scene.get_entities_by_tag

Gets all entity IDs with a specific tag.

**parameters**

- tag `string` - The tag to filter by  

**return**

- entity_ids `string[]` - Array of entity IDs with the given tag  

---

## sucata.scene.clear_entities

Clears all entities from the scene.
