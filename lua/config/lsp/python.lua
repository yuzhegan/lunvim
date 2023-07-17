-- return {
-- 	setup = function(lspconfig, lsp)
-- 		lspconfig.pyright.setup {
-- 			handlers = {
-- 				-- pyright ignores dynamicRegistration settings
-- 				['client/registerCapability'] = function(_, _, _, _)
-- 					return {
-- 						result = nil,
-- 						error = nil,
-- 					}
-- 				end
-- 			},
-- 			settings = {
-- 				python = {
-- 					analysis = {
-- 						extraPath = { '.' },
-- 						autoImportCompletions = true,
-- 					}
-- 				}
-- 			}
--
-- 		}
-- 	end
-- }
--
--
--
local util = require("lspconfig/util")
return {
	setup = function(lspconfig, lsp)
		lspconfig.pyright.setup({
			root_dir = function(fname)
				local root_files = {
					"pyproject.toml",
					"setup.py",
					"setup.cfg",
					"requirements.txt",
					"Pipfile",
					"pyrightconfig.json",
					"main.py",
				}
				return util.find_git_ancestor(fname) or util.root_pattern(unpack(root_files))(fname)
			end
		})
	end

}
