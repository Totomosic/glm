project "glm"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"
    
    targetdir ("../../../bin/" .. OutputTemplate .. "/%{prj.name}")
    objdir ("../../../bin-int/" .. OutputTemplate .. "/%{prj.name}")

    files
    {
        "glm/**.cpp",
        "glm/**.hpp",
        "glm/**.inl",
    }

    includedirs
    {
        "",
    }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"
