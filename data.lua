
fluid_dynamic = {
    fluid_category = {
        "liquid",
        "gas",
    },
    fluid_type = {
        ["petroleum-gas"] = "gas",
    },
}

-- Add the fluid type
local function initialize_fluid_type_map()
    for name, fluid in pairs(data.raw.fluid) do
        if fluid_dynamic.fluid_type[name] then
            fluid.fluid_type = fluid_dynamic.fluid_type[name]
        end
    end
end

initialize_fluid_type_map()