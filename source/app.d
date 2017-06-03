import std.stdio, std.process, std.array;

void main(string[] args)
{
    string[] wineProc = array(["wine", "dmd"]);
    if (args.length > 1){
        wineProc.length += args.length - 1;
        for (int i = 1; i < args.length; ++i)
            wineProc[i + 1] = args[i];
    }
    auto dmdPid = spawnProcess(wineProc);
    if (wait(dmdPid) != 0)
        writeln("Compilation failed!");
}
