project "IMGUI"
	kind "StaticLib"
	language "C++"
    cppdialect "C++20"
	staticruntime "off"
	warnings "off"
    rtti "off"
    exceptionhandling "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
    filter ""

	filter "configurations:Release"
		runtime "Release"
		optimize "Speed"
    filter ""