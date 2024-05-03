local function install()
    if fs.exists("/Nebula") then
        fs.delete("/Nebula")
    end
    if fs.exists("/startup.lua") then
        fs.delete("/startup.lua")
    end
    shell.run("cd /")
    shell.run("wget https://raw.githubusercontent.com/Mag1cpunch/NebulaBoot/main/startup.lua")
    fs.makeDir("/Nebula")
    shell.run("cd /Nebula")
    shell.run("wget https://raw.githubusercontent.com/Mag1cpunch/NebulaBoot/main/Nebula/boot.lua")
    fs.makeDir("/Nebula/Kernels")
    fs.delete("/install-nebula.lua")
    os.reboot()
end
install()