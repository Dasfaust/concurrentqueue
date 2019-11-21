project "concurrentqueue"
    kind "StaticLib"
    language "C++"
    systemversion "latest"
    cppdialect "C++17"
    staticruntime "on"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("build/" .. outputdir .. "/%{prj.name}")

	files
	{
        "concurrentqueue.h"
    }
    
    filter "configurations:release"
        optimize "on"

    filter "configurations:dist"
        optimize "on"
