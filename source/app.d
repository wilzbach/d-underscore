import std.experimental.all;

auto removeIf(alias pred, AA)(AA aa)
{
    aa.byPair.filter!(not!pred).each!(e => aa.remove(e.key));
    return aa;
}

@safe unittest
{
    auto aa = ["a" : 1, "b" : 2];
    aa.removeIf!(a => a.key == "a");
    assert(aa == ["a":1]);
}
