local function boot()
    term.clear()
    print("Checking FS...")
    if not fs.exists("/Nebula") then
        fs.makeDir("/Nebula")
    end
    if not fs.exists("/Nebula/Kernels") then
        fs.makeDir("/Nebula/Kernels")
    end
    if not fs.exists("/Nebula/boot.lua") then
        shell.run("cd /Nebula")
        shell.run("wget https://raw.githubusercontent.com/Mag1cpunch/NebulaBoot/main/Nebula/boot.lua")
    end
    print("[ OK ] Checked FS.")
    print("Verifying Updates...")
    fs.delete("/Nebula/boot.lua")
    fs.delete("/startup.lua")
    shell.run("cd /")
    shell.run("wget https://raw.githubusercontent.com/Mag1cpunch/NebulaBoot/main/startup.lua")
    shell.run("cd /Nebula")
    shell.run("wget https://raw.githubusercontent.com/Mag1cpunch/NebulaBoot/main/Nebula/boot.lua")
    print("[ OK ] Verified Updates.")
    shell.run("/Nebula/boot.lua")
    print("[ Fail ] Could not continue kernel execution, Rebooting in 5 seconds...")
    os.sleep(5)
    os.reboot()
end
boot()
