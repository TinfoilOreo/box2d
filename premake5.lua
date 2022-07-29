project "Box2D"
    kind "StaticLib"
    language "C++"

    targetdir "bin/%{cfg.buildcfg}"
    objdir "bin-int/%{cfg.buildcfg}"

    includedirs {
        "%{IncludeDir.Box2D}"
    }

    files {
        "include/**.h",
        "src/**.h",
        "src/**.cpp"
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"
    
    filter "configurations:Release"
        runtime "Release"
        optimize "on"
