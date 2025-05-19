# Установка переменных
set project_name "blinker"
# Текущая директория
set project_dir [file normalize "../"] 
set src_dir "$project_dir/src"
set build_dir "$project_dir/build"

# Проверка и создание структуры папок
set required_dirs [list     \
    "$project_dir/scripts"  \
    "$src_dir/hdl"          \
    "$src_dir/constraints"  \
    "$src_dir/sim"          \
    "$src_dir/ip"           \
    "$src_dir/hdl"          \
    "$project_dir/doc"      \
]

foreach dir $required_dirs {
    if {![file exist $dir]} {
        file mkdir $dir
        puts "Created directory: $dir"
    }
}

# Создание проекта и выбор "камня"
create_project -force $project_name $project_dir -part xczu9eg-ffvb1156-2-e

# Перенаправляем временные файлы в build/
set_property DEFAULT_LIB work [current_project]
set_property SIMULATOR_LIB work [current_project]
set_property TARGET_SIMULATOR XSim [current_project]
set_property COMPILE_OUTPUT_DIRECTORY "$build_dir" [current_project]

# Добавление исходников
# add_files -norecurse [glob -directory "$src_dir/hdl" *.v *.vhdl *.v *.sv]
# add_files -fileset constrs_1 [glob -directory "$src_dir/constraints" *.xdc]
# add_files -fileset sim_1 [glob -directory "$src_dir/sim" *.sv *.vhd]

# # Добавление IP-репозитория
# set_property ip_repo_paths "$src_dir/ip" [current_project]
# update_ip_catalog

# # Настройка проекта
# set_property top blinker [current_fileset]
# update_compile_order -fileset sources_1

# save_project_as -force "$project_name"