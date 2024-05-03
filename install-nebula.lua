local function install()
    if fs.exists("/Nebula") then
        fs.delete("/Nebula")
    end
    shell.run("cd /")
    shell.run("wget https://raw.githubusercontent.com/Mag1cpunch/NebulaBoot/main/startup.lua")
    fs.delete("/install-nebula.lua")
end
install()