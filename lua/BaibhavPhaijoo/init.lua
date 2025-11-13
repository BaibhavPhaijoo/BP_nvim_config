pcall(require,"BaibhavPhaijoo.lazy_bootstrap")

pcall(require,"BaibhavPhaijoo.plugins")

pcall(require, "BaibhavPhaijoo.settings")

pcall(require, "BaibhavPhaijoo.keymaps")

pcall(require,"BaibhavPhaijoo.xml_axaml_xaml")

pcall(require,"BaibhavPhaijoo.vim_diagnostic")

pcall(require,"BaibhavPhaijoo.nvim_tree")

pcall(require,"BaibhavPhaijoo.run_code")

require("lazy").setup({ import = "BaibhavPhaijoo.plugins" })
