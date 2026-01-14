-- update vscode intellisense
add_rules("plugin.compile_commands.autoupdate", { outputdir = ".vscode" })

-- project
target("project")

    -- settings
    set_kind("binary")
    set_languages("c++17")

    -- local
    add_includedirs("include/") -- local headers
    add_files("src/**.cpp") -- local cpp files
    add_files("src/**.c") -- local c files

    -- third party
    add_includedirs("third_party/") -- third party headers
    add_files("third_party/**.cpp") -- third cpp files
    add_files("third_party/**.c") -- third c files