return {
    settings = {
        ["rust-analyzer"] = {
            assist = {
                importGranularity = "module",
                importPrefix = "self",
            },
            cargo = {
                loadOutDirsFromCheck = true
            },
            procMacro = {
                enable = true
            },
            diagnostics = {
                enable = true,
                disabled = {"unresolved-proc-macro"},
                enableExperimental = true,
            },
        }
    }
}
