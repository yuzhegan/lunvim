--
-- return {
-- 	setup = function(lspconfig, lsp)
-- 		lspconfig.pyright.setup {
--   handlers = {
--     -- pyright ignores dynamicRegistration settings
--     ['client/registerCapability'] = function(_, _, _, _)
--       return {
--         result = nil;
--         error = nil;
--       }
--     end
--   }
-- }
-- 	end
-- }
--
--
--
-- local util = require("lspconfig/util")
--
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
-- 		}
-- 	end
--
-- }
-- local util = require("lspconfig/util")
-- --
-- local bin_name = "pyright-langserver"
-- local cmd = { bin_name, "--stdio" }
-- if vim.fn.has("win32") == 1 then
-- 	cmd = { "cmd.exe", "/C", bin_name, "--stdio" }
-- end
-- local root_files = {
-- 	"pyproject.toml",
-- 	"setup.py",
-- 	"setup.cfg",
-- 	"requirements.txt",
-- 	"Pipfile",
-- 	"pyrightconfig.json",
-- }
-- return {
-- 	setup = function(lspconfig, lsp)
-- 		lspconfig.pyright.setup({
-- 			vim.api.nvim_create_autocmd("FileType", {
-- 				pattern = "python",
-- 				callback = function()
-- 					vim.lsp.start({
-- 						name = "pyright",
-- 						cmd = cmd,
-- 						root_dir = vim.fs.dirname(vim.fs.find(root_files, { upward = true })[1]),
-- 						settings = {
-- 							python = {
-- 								analysis = {
-- 									autoSearchPaths = true,
-- 									useLibraryCodeForTypes = true,
-- 									diagnosticMode = "workspace",
-- 								},
-- 							},
-- 						},
-- 					})
-- 				end,
-- 			})
-- 		})
-- 	end
-- }
