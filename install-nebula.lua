local function install()
    if fs.exists("/Nebula") then
        fs.delete("/Nebula")
    end
    shell.run("cd /")
    shell.run("wget https://raw.githubusercontent.com/Mag1cpunch/NebulaBoot/main/startup.lua")
    fs.makeDir("/Nebula")
    fs.makeDir("/Nebula/Kernels")
    shell.run("cd /Nebula")
    shell.run("wget https://github.com/Mag1cpunch/NebulaBoot/blob/main/Nebula/boot.lua")
    fs.delete("/install-nebula.lua")
    os.reboot()
end
install()