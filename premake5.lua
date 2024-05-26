-- spdlog
project "spdlog"
  --kind "StaticLib"
  kind "None"
  language "C++"
  cppdialect "C++20"
  --staticruntime "on"
  systemversion "latest"


  targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
  objdir ("%{wks.location}/build/" .. outputdir .. "/%{prj.name}")

  IncludeDir["spdlog"] = "%{wks.location}/libs/spdlog/include"

  includedirs {
    "%{IncludeDir.spdlog}"
  }

  --defines {
  --  "SPDLOG_COMPILED_LIB",
  --  "SPDLOG_WCHAR_TO_UTF8_SUPPORT",
  --  "SPDLOG_UTF8_TO_WCHAR_CONSOLE",
  --  "SPDLOG_WCHAR_FILENAMES"
  --}

  files {
    "premake5.lua",
    
    "include/**.h",

    --"src/spdlog.cpp",
    --"src/stdout_sinks.cpp",
    --"src/color_sinks.cpp",
    --"src/file_sinks.cpp",
    --"src/async.cpp",
    --"src/cfg.cpp"
  }
