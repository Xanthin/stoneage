--
-- overwrite default nodes and tools
--

-- stoneage = {}
local entity

-- registered
local registered = function(case,name)
	local params = {}
	local list
	if case == "item" then list = minetest.registered_items end
	if case == "node" then list = minetest.registered_nodes end
	if case == "craftitem" then list = minetest.registered_craftitems end
	if case == "tool" then list = minetest.registered_tools end
	if case == "entity" then list = minetest.registered_entities end
	if list then
		for k,v in pairs(list[name]) do
			params[k] = v
		end
	end
	return params
end

-- tree
entity = registered("node","default:tree")
entity.groups = {tree=1,choppy=2,flammable=2}
minetest.register_node(":default:tree", entity)

-- beech_tree
entity = registered("node","moretrees:beech_trunk")
entity.groups = {tree=1,choppy=2,flammable=2}
minetest.register_node(":moretrees:beech_trunk", entity)

-- apple_tree
entity = registered("node","moretrees:apple_tree_trunk")
entity.groups = {tree=1,choppy=2,flammable=2}
minetest.register_node(":moretrees:apple_tree_trunk", entity)

-- oak_tree
entity = registered("node","moretrees:oak_trunk")
entity.groups = {tree=1,choppy=2,flammable=2}
minetest.register_node(":moretrees:oak_trunk", entity)

-- sequoia_tree
entity = registered("node","moretrees:sequoia_trunk")
entity.groups = {tree=1,choppy=2,flammable=2}
minetest.register_node(":moretrees:sequoia_trunk", entity)

-- birch_tree
entity = registered("node","moretrees:birch_trunk")
entity.groups = {tree=1,choppy=2,flammable=2}
minetest.register_node(":moretrees:birch_trunk", entity)

-- palm_tree
entity = registered("node","moretrees:palm_trunk")
entity.groups = {tree=1,choppy=2,flammable=2}
minetest.register_node(":moretrees:palm_trunk", entity)

-- spruce_tree
entity = registered("node","moretrees:spruce_trunk")
entity.groups = {tree=1,choppy=2,flammable=2}
minetest.register_node(":moretrees:spruce_trunk", entity)

-- moretrees:pine_trunk
entity = registered("node","moretrees:pine_trunk")
entity.groups = {tree=1,choppy=2,flammable=2}
minetest.register_node(":moretrees:pine_trunk", entity)

-- moretrees:rubber_tree_trunk
entity = registered("node","moretrees:rubber_tree_trunk")
entity.groups = {tree=1,choppy=2,flammable=2}
minetest.register_node(":moretrees:rubber_tree_trunk", entity)

-- moretrees:willow_trunk
entity = registered("node","moretrees:willow_trunk")
entity.groups = {tree=1,choppy=2,flammable=2}
minetest.register_node(":moretrees:willow_trunk", entity)

-- moretrees:fir_trunk
entity = registered("node","moretrees:fir_trunk")
entity.groups = {tree=1,choppy=2,flammable=2}
minetest.register_node(":moretrees:fir_trunk", entity)

-- jungletree
entity = registered("node","default:jungletree")
entity.groups = {tree=1,choppy=2,flammable=2}
minetest.register_node(":default:jungletree", entity)

-- wooden axe
entity = registered("tool","default:axe_wood")
entity.tool_capabilities = {
			max_drop_level=0,
			groupcaps={
				choppy={times={[3]=0.80}, uses=10, maxlevel=1},
				fleshy={times={[2]=1.50, [3]=0.80}, uses=10, maxlevel=1},
			}
		}
minetest.register_tool(":default:axe_wood", entity)

-- wooden pickse
entity = registered("tool","default:pick_wood")
entity.tool_capabilities = {
			max_drop_level=0,
			groupcaps={
			}
		}
minetest.register_tool(":default:pick_wood", entity)
