project "Box2D"
    kind "StaticLib"
    language "C++"

    targetdir "bin/%{cfg.buildcfg}"
    objdir "bin-int/%{cfg.buildcfg}"

    includedirs {
        "%{IncludeDir.Box2D}"
    }

    files {
        "vendor/box2d/include/**.h",
        "vendor/box2d/src/**.h",
        "vendor/box2d/src/**.cpp"
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"
    
    filter "configurations:Release"
        runtime "Release"
        optimize "on"
