require("config.lazy")
require("lspconfig").clangd.setup({
    cmd = { "clangd", "--query-deriver=/davou.bin/g++", "--fallback-flag=-std=c++17" },
})
