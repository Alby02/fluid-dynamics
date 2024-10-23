for _, fluid in pairs(data.raw.fluid) do
    -- If the fluid doesn't have a fluid_type, assign "liquid" as the default
    if not fluid.fluid_type then
        fluid.fluid_type = "liquid"
    end
end
