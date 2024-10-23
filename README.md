# Fluid Dynamics Mod

## Short Description

The **Fluid Dynamics Mod** enhances fluid management in Factorio by introducing a system to categorize fluids as either gas or liquid. Modders can easily define specific fluid types and extend the system by adding new categories as needed, promoting compatibility and customization across different mods.

## Long Description

The **Fluid Dynamics Mod** is designed to improve fluid management in Factorio by providing a structured system for categorizing fluids as either gas or liquid. This mod is currently in alpha, and while it offers essential features for defining and managing fluid types, it may undergo changes and improvements based on user feedback and future development.

### Features

- **Fluid Categorization**: Fluids can be classified as either gas or liquid, allowing for better organization and management within the game.
- **Custom Fluid Types**: Modders can easily define specific fluid types using a simple global table.

### How to Use This Mod

1. **Adding Fluid Types**:
   - Modders can add new fluid types by modifying the `fluid_dynamic.fluid_type` table. For example, to categorize `my-custom-fluid` as a `liquid`:
     ```lua
     fluid_dynamic.fluid_type["my-custom-fluid"] = "liquid"
     ```

2. **Removing Fluid Types**:
   - To remove a fluid type, set its entry in the `fluid_dynamic.fluid_type` table to `nil`:
     ```lua
     fluid_dynamic.fluid_type["petroleum-gas"] = nil
     ```

3. **Extending Fluid Categories**:
   - You can add additional fluid categories beyond the default `liquid` and `gas` by modifying the `fluid_dynamic.fluid_category` table:
     ```lua
     table.insert(fluid_dynamic.fluid_category, "custom-category")
     ```

4. **Global Access**:
   - The `fluid_dynamic` table is globally accessible, allowing other mods to read from and modify it, enhancing compatibility and integration.

### Conclusion

The **Fluid Dynamics Mod** aims to provide a more organized and customizable fluid management system in Factorio. As it is currently in alpha, user feedback is invaluable for further development. By following the guidelines above, modders can seamlessly integrate and customize fluid definitions, contributing to a richer modding ecosystem.
