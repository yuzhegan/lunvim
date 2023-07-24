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
-- }
--
--
--
-- local util = require("lspconfig/util")
-- return {
-- 	setup = function(lspconfig, lsp)
-- 		lspconfig.pyright.setup({
-- 			root_dir = function(fname)
-- 				local root_files = {
-- 					"pyproject.toml",
-- 					"setup.py",
-- 					"setup.cfg",
-- 					"requirements.txt",
-- 					"Pipfile",
-- 					"pyrightconfig.json",
-- 					"main.py",
-- 				}
-- 				return util.find_git_ancestor(fname) or util.root_pattern(unpack(root_files))(fname)
-- 			end
-- 		})
-- 	end
-- }
return {
	setup = function(lspconfig, lsp)
		lspconfig.pyright.setup {
			capabilities = lsp.capabilities,
			flags = { debounce_text_changes = 150 },
			on_attach = lsp.on_attach,
			cmd = { "pyright-langserver", "--stdio" },
			filetypes = { "python" },
			handlers = {
				-- pyright ignores dynamicRegistration settings
				['client/registerCapability'] = function(_, _, _, _)
					return {
						result = nil,
						error = nil,
					}
				end
			},
			settings = {
				python = {
					analysis = {
						autoSearchPaths = true,
						diagnosticMode = "workspace",
						useLibraryCodeForTypes = true,
						typeCheckingMode = "off",
					},
					formatting = {
						provider = "autopep8",
						autopep8Args = "--max-line-length=200"
					},
					linting = {
						flake8Enabled = true,
						flake8Args = "--max-line-length=200"
					},
					sortImports = {
						args = { "--line-length=200", "--multi-line=4" }
					}
				},
			}
		}
	end
}
