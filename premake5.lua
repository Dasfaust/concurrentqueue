project "concurrentqueue"
    kind "StaticLib"
    language "C++"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "concurrentqueue.h"
    }
    
	filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"
       
  filter "system:linux"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"
        
  filter { "system:windows", "configurations:Release" }
      buildoptions "/MT"
