
return {
	setup = function(lspconfig, lsp)
		lspconfig.pyright.setup {
  handlers = {
    -- pyright ignores dynamicRegistration settings
    ['client/registerCapability'] = function(_, _, _, _)
      return {
        result = nil;
        error = nil;
      }
    end
  }
}
	end
}
--
--
--
-- local util = require("lspconfig/util")
-- return {
-- 	setup = function (lspconfig, lsp)
-- 		lspconfig.pyright.setup({
--   root_dir = function(fname)
--     return util.root_pattern(".git", "setup.py",  "setup.cfg", "pyproject.toml", "requirements.txt")(fname) or
--       util.path.dirname(fname)
--   end
-- })
-- 		
-- 	end
--
-- }
