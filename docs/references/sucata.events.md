# sucata.events

The events module of the Sucata.

---

## sucata.events.emit

Emits an event with the given name and data.

**parameters**

- name `string` - The name of the event  
- data `table` - Additional data to pass with the event  

---

## sucata.events.on

Registers a handler for an event.

**parameters**

- owner `number | Entity` - The entity owner of the handler (can be an entity table or entity ID)  
- name `string` - The name of the event  
- callback `function` - The function to call when the event is emitted  
