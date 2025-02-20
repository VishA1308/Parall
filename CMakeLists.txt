cmake_minimum_required(VERSION 3.8)

# Опция для использования double
option(USE_DOUBLE "Use double instead of float" ON)

if (POLICY CMP0141)
  cmake_policy(SET CMP0141 NEW)
  set(CMAKE_MSVC_DEBUG_INFORMATION_FORMAT "$<IF:$<AND:$<C_COMPILER_ID:MSVC>,$<CXX_COMPILER_ID:MSVC>>,$<$<CONFIG:Debug,RelWithDebInfo>:EditAndContinue>,$<$<CONFIG:Debug,RelWithDebInfo>:ProgramDatabase>>")
endif()

project("CMakeProject6")

# Добавьте источник в исполняемый файл этого проекта.
add_executable(CMakeProject6 "CMakeProject6.cpp" "CMakeProject6.h")

if (CMAKE_VERSION VERSION_GREATER 3.12)
  set_property(TARGET CMakeProject6 PROPERTY CXX_STANDARD 20)
endif()

# Установите флаг препроцессора в зависимости от опции USE_DOUBLE
if(USE_DOUBLE)
    target_compile_definitions(CMakeProject6 PRIVATE USE_DOUBLE)
endif()
