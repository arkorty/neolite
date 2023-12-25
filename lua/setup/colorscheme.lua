local ok, onedark = pcall(require, "onedark")
if not ok then
	return
end

local transparent = true
if vim.g.neovide then
	transparent = false
end

onedark.setup({
	style = "darker",
	transparent = transparent,
})

onedark.load()
