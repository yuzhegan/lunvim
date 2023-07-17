-- svae session
save_session = function(session)
	session = "~/.config/nvim/tmp/backup/session_" .. session

	vim.cmd("mksession! " .. session)
end

-- for _, mapping in ipairs(nmappings) do
-- 	vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, { noremap = true })
-- end
for i = 1, 9 do
	vim.keymap.set("n", i .. "s", "<cmd>lua save_session(" .. i .. ")<cr>", { noremap = true, silent = true })
end





--read session
read_session = function(session)
	session = "~/.config/nvim/tmp/backup/session_" .. session

	vim.cmd("source " .. session)
end

for i = 1, 9 do
	vim.keymap.set("n", i .. "r", "<cmd>lua read_session(" .. i .. ")<cr>", { noremap = true, silent = true })
end



return {
	-- save_session(1)
	-- vim.keymap.set("n", "1s", "<cmd>lua save_session(1)<cr>", { noremap = true, silent = true }),
	-- "save_session(" .. i .. ")",
	--
	--"vim.keymap.set('n', '" .. i .. "s', '<cmd>lua save_session(" .. i .. ")<cr>', { noremap = true, silent = true })",


}
