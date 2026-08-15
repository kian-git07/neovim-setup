-- This is where custom user commands should go

-- This command is run with an argument such that it creates the appropriate file needed for each project

vim.api.nvim_create_user_command(
  "CreateFiles",
  function(opts)
    if opts.args == "pers+" then
      local file = io.open(".clang-format", "w")

      if file then
        file:write("BasedOnStyle: LLVM\nBreakBeforeBraces: Allman\nIndentWidth: 4\nTabWidth: 4\nUseTab: Never")
        file:close()
      else
        print("unable to write file")
      end
    end
  end,
  {
    nargs = 1,
    desc = "Adds Yamal File for Cpp"
  }
)
