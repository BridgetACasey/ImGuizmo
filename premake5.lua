project "ImGuizmo"
	kind "StaticLib"
	language "C++"
    staticruntime "on"

	targetdir ("build/" .. outputdir .. "/%{prj.name}")
	objdir ("build-int/" .. outputdir .. "/%{prj.name}")

   includedirs
   {
      "../imgui"
   }

	files
	{
		"GraphEditor.h",
		"GraphEditor.cpp",
      "ImCurveEdit.h",
      "ImCurveEdit.cpp",
      "ImGradient.h",
      "ImGradient.cpp",
      "ImGuizmo.h",
      "ImGuizmo.cpp",
      "ImSequencer.h",
      "ImSequencer.cpp",
      "ImZoomSlider.h"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"
