local function boot()
    print("Checking FS...")
    if not fs.exists("/Nebula") then
        fs.makeDir("/Nebula")
    end
    if not fs.exists("/Nebula/Kernels") then
        fs.makeDir("/Nebula/Kernels")
    end
    print("[ OK ] Checked FS.")
    shell.run("/Nebula/boot.lua")
    term.clear()
    print("[ Fail ] Could not continue kernel execution, Rebooting in 5 seconds...")
    os.sleep(5)
    os.shutdown()
end
boot()
