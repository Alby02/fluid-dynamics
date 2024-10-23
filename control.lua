
local fluid_type_map = {}

-- Function to initialize the fluid type cache
local function initialize_fluid_type_map()
    for name, fluid in pairs(game.fluid_prototypes) do
        -- Cache the fluid name and its fluid_type (e.g., gas or liquid)
        fluid_type_map[name] = fluid.fluid_type
    end
end

-- Event handler to initialize the fluid type map when the game starts or loads
script.on_init(initialize_fluid_type_map)
script.on_load(initialize_fluid_type_map)

-- Function to check if the fluid type matches the entity's allowed fluid type
local function check_fluid_type(entity)
    if entity.fluidbox and entity.fluidbox[1] then
        local fluid = entity.fluidbox[1]  -- Get the fluid in the entity
        local fluid_name = fluid.name

        -- Use the cached map to get the fluid type instead of querying game.fluid_prototypes
        local fluid_type = fluid_type_map[fluid_name]
        local entity_fluid_type = entity.prototype.fluid_type

        -- Compare the entity's fluid type with the fluid type in the cache
        if fluid_type ~= entity_fluid_type then
            entity.fluidbox[1] = nil  -- Clear the fluid if the types don't match
            -- Optionally, notify the player about the mismatch
            local player = game.players[event.player_index]
            if player then
                player.print("This " .. entity.name .. " only supports " .. entity_fluid_type .. " fluids!")
            end
        end
    end
end

-- Event when an entity is built (pipes, pumps, tanks)
script.on_event(defines.events.on_built_entity, function(event)
    local entity = event.created_entity
    if entity.type == "pipe" or entity.type == "storage-tank" or entity.type == "pump" then
        check_fluid_type(entity)  -- Call the check function
    end
end)
