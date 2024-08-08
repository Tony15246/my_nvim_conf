return {
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
            "mfussenegger/nvim-dap-python",
        },
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")

            require("dapui").setup()
            require("dap-python").setup("/home/tony/Code/Python/myenv/bin/python")

            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end

            vim.keymap.set("n", "<F5>", dap.continue, {})
            vim.keymap.set("n", "<F10>", dap.step_over, {})
            vim.keymap.set("n", "<F11>", dap.step_into, {})
            vim.keymap.set("n", "<F12>", dap.step_out, {})
            vim.keymap.set("n", "<Leader>b", dap.toggle_breakpoint, {})
            vim.keymap.set("n", "<Leader>ds", dapui.toggle, {})
            dap.adapters.cppdbg = {
                id = "cppdbg",
                type = "executable",
                command =
                "/home/tony/.cpptools/extension/debugAdapters/bin/OpenDebugAD7",
            }
            dap.configurations.cpp = {
                {
                    name = "Launch file",
                    type = "cppdbg",
                    preLaunchTask = function()
                        vim.system({ "cmake", ".." }, { cwd = vim.fn.getcwd() .. "/build" }):wait()
                        vim.system({ "make" }, { cwd = vim.fn.getcwd() .. "/build" }):wait()
                    end,
                    request = "launch",
                    program = "${workspaceFolder}/build/${fileBasenameNoExtension}",
                    cwd = "${workspaceFolder}/build",
                    stopAtEntry = true,
                },
            }
            dap.configurations.c = dap.configurations.cpp
            dap.configurations.rust = dap.configurations.cpp
        end,
    },
}
