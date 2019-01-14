#!/bin/bash
set -e

ls /usr/lib/x86_64-linux-gnu/libzip/include || echo "MISSING DEPENDENCY: /usr/lib/x86_64-linux-gnu/libzip/include (apt install libzip-dev)"
ls /usr/include/libpng12                    || echo "MISSING DEPENDENCY: /usr/include/libpng12                    (apt install libpng-dev)"
ls /usr/include/jansson.h                   || echo "MISSING DEPENDENCY: /usr/include/jansson.h                   (apt install libjansson-dev)"

mkdir -p ../build/include
cp /usr/include/jansson.h        ../build/include
cp /usr/include/jansson_config.h ../build/include

build_c() {
    echo $1
    mkdir -p $(dirname "../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1")
    emcc  -DNO_RCT2 -DOPENGL_NO_LINK -DOPENRCT2_BRANCH=\"develop\" -D__ENABLE_LIGHTFX__ -Dlibopenrct2_EXPORTS \
        -I/usr/lib/x86_64-linux-gnu/libzip/include -I/usr/include/libpng12 -I../build/include \
        -std=gnu11 -S -emit-llvm -fmax-type-align=1 \
        -DDISABLE_OPENGL -DDISABLE_NETWORK=1 -DDISABLE_HTTP -DDISABLE_TWITCH -D__amd64__ -D__LINUX__ -D__linux__ -D_LIBCPP_HAS_MUSL_LIBC \
        -I../include -I../include/sdl -fstrict-aliasing \
        -Werror -Wundef -Wmissing-declarations -Winit-self -Wall -Wno-unknown-pragmas -Wno-unused-function -Wno-missing-braces \
        -Wimplicit -Wno-comment -Wshadow  -Wmissing-declarations -Wnonnull \
        -fPIC -O3 -fno-exceptions \
        -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.o -c ../src/openrct2/$1.c
    llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.ll || echo nf
}
build_cpp() {
    echo $1
    mkdir -p $(dirname "../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1")
    emcc -DNO_RCT2 -DOPENGL_NO_LINK -DOPENRCT2_BRANCH=\"develop\" -D__ENABLE_LIGHTFX__ -Dlibopenrct2_EXPORTS \
        -I/usr/lib/x86_64-linux-gnu/libzip/include -I/usr/include/libpng12 -I../build/include \
        -stdlib=libc++ -std=gnu++14 -S -emit-llvm -fmax-type-align=1 \
        -DDISABLE_OPENGL -DDISABLE_NETWORK=1 -DDISABLE_HTTP -DDISABLE_TWITCH -D__amd64__ -D__LINUX__ -D__linux__ -D_LIBCPP_HAS_MUSL_LIBC \
        -I../include -I../include/sdl -fstrict-aliasing \
        -Werror -Wundef -Wmissing-declarations -Winit-self -Wall -Wno-unknown-pragmas -Wno-unused-function -Wno-missing-braces \
        -Wno-comment -Wshadow  -Wmissing-declarations -Wnonnull \
        -fPIC -O3 \
        -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.o -c ../src/openrct2/$1.cpp
    llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.ll || echo nf
}
build_cpp_() {
    echo $1
    mkdir -p $(dirname "../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1")
    emcc -DNO_RCT2 -DOPENGL_NO_LINK -DOPENRCT2_BRANCH=\"develop\" -D__ENABLE_LIGHTFX__ -Dlibopenrct2_EXPORTS \
        -I/usr/lib/x86_64-linux-gnu/libzip/include -I/usr/include/libpng12 -I../build/include \
        -stdlib=libc++ -std=gnu++14 -S -emit-llvm -fmax-type-align=1 \
        -DDISABLE_OPENGL -DDISABLE_NETWORK=1 -DDISABLE_HTTP -DDISABLE_TWITCH -D__amd64__ -D__LINUX__ -D__linux__ -D_LIBCPP_HAS_MUSL_LIBC \
        -I../include -I../include/sdl -fstrict-aliasing \
        -Werror -Wundef -Wmissing-declarations -Winit-self -Wall -Wno-unknown-pragmas -Wno-unused-function -Wno-missing-braces \
        -Wno-comment -Wshadow  -Wmissing-declarations -Wnonnull \
        -fPIC -O3 \
        -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.o -c ../src/openrct2/$1.cpp
    llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.ll || echo nf
}
opt_build_c() {
    echo $1
    mkdir -p $(dirname "../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1")
    emcc  -DNO_RCT2 -DOPENGL_NO_LINK -DOPENRCT2_BRANCH=\"develop\" -D__ENABLE_LIGHTFX__ -Dlibopenrct2_EXPORTS \
        -I/usr/lib/x86_64-linux-gnu/libzip/include -I/usr/include/libpng12 -I../build/include \
        -std=gnu11 -S -emit-llvm -fmax-type-align=1 \
        -DDISABLE_OPENGL -DDISABLE_NETWORK=1 -DDISABLE_HTTP -DDISABLE_TWITCH -D__amd64__ -D__LINUX__ -D__linux__ -D_LIBCPP_HAS_MUSL_LIBC \
        -I../include -I../include/sdl -fstrict-aliasing \
        -Werror -Wundef -Wmissing-declarations -Winit-self -Wall -Wno-unknown-pragmas -Wno-unused-function -Wno-missing-braces \
        -Wimplicit -Wno-comment -Wshadow  -Wmissing-declarations -Wnonnull \
        -fPIC -O3 -fno-exceptions \
        -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.o -c ../src/openrct2/$1.c
    llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.ll || echo nf
}

build_cpp         audio/audio
build_cpp         audio/AudioMixer
build_cpp         audio/DummyAudioContext
build_cpp         audio/NullAudioSource
build_c           cheats
build_cpp         cmdline/CommandLine
build_cpp         cmdline/ConvertCommand
build_cpp         cmdline/RootCommands
build_cpp         cmdline/ScreenshotCommands
build_cpp         cmdline/SpriteCommands
build_cpp         cmdline/UriHandler
build_c           cmdline_sprite
build_cpp         config/Config
build_cpp         config/IniReader
build_cpp         config/IniWriter
build_cpp         config/KeyboardShortcuts
build_cpp_         Context
build_cpp         core/Console
build_cpp         core/Diagnostics
build_cpp         core/File
build_cpp         core/FileScanner
build_cpp         core/Guard
build_cpp         core/IStream
build_cpp         core/Json
build_cpp         core/MemoryStream
build_cpp         core/Path
build_cpp         core/String
build_c           core/textinputbuffer
build_cpp         core/Zip
build_c           diagnostic
opt_build_c       drawing/drawing
build_cpp         drawing/drawing_fast
opt_build_c       drawing/font
build_cpp         drawing/Image
opt_build_c       drawing/lightfx
opt_build_c       drawing/line
build_cpp         drawing/NewDrawing
build_cpp         drawing/Rain
opt_build_c       drawing/rect
build_c           drawing/scrolling_text
build_cpp         drawing/sprite
opt_build_c       drawing/string
build_c           editor
build_cpp         FileClassifier
build_c           game
build_cpp         Imaging
build_c           input
build_c           interface/chat
build_c           interface/colour
build_c           interface/console
build_cpp         interface/Fonts
build_c           interface/graph
build_c           interface/keyboard_shortcut
build_c           interface/screenshot
build_cpp         interface/Theme
build_c           interface/viewport
build_c           interface/viewport_interaction
build_c           interface/widget
build_c           interface/window
build_c           intro
opt_build_c       localisation/convert
opt_build_c       localisation/currency
opt_build_c       localisation/date
opt_build_c       localisation/format_codes
build_cpp         localisation/language
build_cpp         localisation/LanguagePack
opt_build_c       localisation/localisation
opt_build_c       localisation/real_names
opt_build_c       localisation/user
opt_build_c       localisation/utf8
opt_build_c       management/award
opt_build_c       management/finance
opt_build_c       management/marketing
opt_build_c       management/news_item
opt_build_c       management/research
build_cpp         network/http
build_cpp         network/network
build_cpp         network/NetworkAction
build_cpp         network/NetworkConnection
build_cpp         network/NetworkGroup
build_cpp         network/NetworkKey
build_cpp         network/NetworkPacket
build_cpp         network/NetworkPlayer
build_cpp         network/NetworkServerAdvertiser
build_cpp         network/NetworkUser
build_cpp         network/ServerList
build_cpp         network/TcpSocket
build_cpp         network/twitch
build_cpp         object/BannerObject
build_cpp         object/EntranceObject
build_cpp         object/FootpathItemObject
build_cpp         object/FootpathObject
build_cpp         object/ImageTable
build_cpp         object/LargeSceneryObject
build_cpp         object/Object
build_cpp         object/ObjectFactory
build_cpp         object/ObjectManager
build_cpp         object/ObjectRepository
build_cpp         object/RideObject
build_cpp         object/SceneryGroupObject
build_cpp         object/SmallSceneryObject
build_cpp         object/StexObject
build_cpp         object/StringTable
build_cpp         object/WallObject
build_cpp         object/WaterObject
opt_build_c       object_list
build_cpp         OpenRCT2
build_c           paint/map_element/banner
opt_build_c       paint/map_element/entrance
opt_build_c       paint/map_element/fence
opt_build_c       paint/map_element/map_element
opt_build_c       paint/map_element/path
opt_build_c       paint/map_element/scenery
opt_build_c       paint/map_element/scenery_multiple
opt_build_c       paint/map_element/surface
opt_build_c       paint/paint
opt_build_c       paint/paint_helpers
opt_build_c       paint/sprite/litter
opt_build_c       paint/sprite/misc
opt_build_c       paint/sprite/peep
opt_build_c       paint/sprite/sprite
opt_build_c       paint/supports
build_cpp         ParkImporter
opt_build_c       peep/peep
opt_build_c       peep/peep_data
opt_build_c       peep/staff
build_cpp         platform/crash
opt_build_c       platform/linux
build_cpp         platform/Platform2
opt_build_c       platform/posix
opt_build_c       platform/shared
opt_build_c       platform/windows
build_cpp         PlatformEnvironment
build_cpp         rct1/S4Importer
build_cpp         rct1/tables
build_c           rct1
build_cpp         rct12/SawyerChunk
build_cpp         rct12/SawyerChunkReader
build_cpp         rct12/SawyerChunkWriter
build_cpp         rct12/SawyerEncoding
build_c           rct2/addresses
build_c           rct2/hook
build_c           rct2/interop
build_cpp         rct2/S6Exporter
build_cpp         rct2/S6Importer
build_c           rct2
opt_build_c       ride/cable_lift
opt_build_c       ride/coaster/air_powered_vertical_coaster
opt_build_c       ride/coaster/bobsleigh_coaster
opt_build_c       ride/coaster/bolliger_mabillard_track
opt_build_c       ride/coaster/compact_inverted_coaster
opt_build_c       ride/coaster/corkscrew_roller_coaster
opt_build_c       ride/coaster/flying_roller_coaster
opt_build_c       ride/coaster/giga_coaster
opt_build_c       ride/coaster/heartline_twister_coaster
opt_build_c       ride/coaster/inverted_hairpin_coaster
opt_build_c       ride/coaster/inverted_impulse_coaster
opt_build_c       ride/coaster/inverted_roller_coaster
opt_build_c       ride/coaster/junior_roller_coaster
opt_build_c       ride/coaster/lay_down_roller_coaster
opt_build_c       ride/coaster/lim_launched_roller_coaster
opt_build_c       ride/coaster/looping_roller_coaster
opt_build_c       ride/coaster/mine_ride
opt_build_c       ride/coaster/mine_train_coaster
opt_build_c       ride/coaster/mini_roller_coaster
opt_build_c       ride/coaster/mini_suspended_coaster
opt_build_c       ride/coaster/multi_dimension_roller_coaster
opt_build_c       ride/coaster/reverser_roller_coaster
opt_build_c       ride/coaster/reverse_freefall_coaster
opt_build_c       ride/coaster/side_friction_roller_coaster
opt_build_c       ride/coaster/stand_up_roller_coaster
opt_build_c       ride/coaster/steeplechase
opt_build_c       ride/coaster/suspended_swinging_coaster
opt_build_c       ride/coaster/twister_roller_coaster
opt_build_c       ride/coaster/vertical_drop_roller_coaster
opt_build_c       ride/coaster/virginia_reel
opt_build_c       ride/coaster/wild_mouse
opt_build_c       ride/coaster/wooden_roller_coaster
opt_build_c       ride/coaster/wooden_wild_mouse
opt_build_c       ride/gentle/car_ride
opt_build_c       ride/gentle/circus_show
opt_build_c       ride/gentle/crooked_house
opt_build_c       ride/gentle/dodgems
opt_build_c       ride/gentle/ferris_wheel
opt_build_c       ride/gentle/flying_saucers
opt_build_c       ride/gentle/ghost_train
opt_build_c       ride/gentle/haunted_house
opt_build_c       ride/gentle/maze
opt_build_c       ride/gentle/merry_go_round
opt_build_c       ride/gentle/mini_golf
opt_build_c       ride/gentle/mini_helicopters
opt_build_c       ride/gentle/monorail_cycles
opt_build_c       ride/gentle/observation_tower
opt_build_c       ride/gentle/space_rings
opt_build_c       ride/gentle/spiral_slide
opt_build_c       ride/ride
opt_build_c       ride/ride_data
opt_build_c       ride/ride_ratings
opt_build_c       ride/shops/facility
opt_build_c       ride/shops/shop
opt_build_c       ride/station
opt_build_c       ride/thrill/3d_cinema
opt_build_c       ride/thrill/enterprise
opt_build_c       ride/thrill/go_karts
opt_build_c       ride/thrill/launched_freefall
opt_build_c       ride/thrill/magic_carpet
opt_build_c       ride/thrill/motion_simulator
opt_build_c       ride/thrill/pirate_ship
opt_build_c       ride/thrill/roto_drop
opt_build_c       ride/thrill/swinging_inverter_ship
opt_build_c       ride/thrill/top_spin
opt_build_c       ride/thrill/twist
opt_build_c       ride/track
build_cpp         ride/TrackDesignRepository
opt_build_c       ride/track_data
opt_build_c       ride/track_data_old
opt_build_c       ride/track_design
opt_build_c       ride/track_design_save
opt_build_c       ride/track_paint
opt_build_c       ride/transport/chairlift
opt_build_c       ride/transport/lift
opt_build_c       ride/transport/miniature_railway
opt_build_c       ride/transport/monorail
opt_build_c       ride/transport/suspended_monorail
opt_build_c       ride/vehicle
opt_build_c       ride/vehicle_data
opt_build_c       ride/vehicle_paint
opt_build_c       ride/water/boat_ride
opt_build_c       ride/water/dingy_slide
opt_build_c       ride/water/log_flume
opt_build_c       ride/water/river_rapids
opt_build_c       ride/water/splash_boats
opt_build_c       ride/water/submarine_ride
opt_build_c       ride/water/water_coaster
build_c           scenario/scenario
build_cpp         scenario/ScenarioRepository
build_cpp         scenario/ScenarioSources
build_cpp         title/TitleScreen
build_cpp         title/TitleSequence
build_cpp         title/TitleSequenceManager
build_cpp         title/TitleSequencePlayer
build_cpp         ui/DummyUiContext
build_c           util/sawyercoding
build_c           util/util
build_cpp         Version
opt_build_c       windows/about
opt_build_c       windows/banner
opt_build_c       windows/changelog
opt_build_c       windows/cheats
opt_build_c       windows/clear_scenery
opt_build_c       windows/custom_currency
opt_build_c       windows/debug_paint
opt_build_c       windows/demolish_ride_prompt
opt_build_c       windows/dropdown
opt_build_c       windows/editor_bottom_toolbar
opt_build_c       windows/editor_inventions_list
opt_build_c       windows/editor_main
opt_build_c       windows/editor_objective_options
opt_build_c       windows/editor_object_selection
opt_build_c       windows/editor_scenario_options
opt_build_c       windows/error
opt_build_c       windows/finances
opt_build_c       windows/footpath
opt_build_c       windows/game_bottom_toolbar
opt_build_c       windows/guest
opt_build_c       windows/guest_list
opt_build_c       windows/install_track
opt_build_c       windows/land
opt_build_c       windows/land_rights
opt_build_c       windows/loadsave
opt_build_c       windows/main
opt_build_c       windows/map
opt_build_c       windows/mapgen
opt_build_c       windows/map_tooltip
opt_build_c       windows/maze_construction
opt_build_c       windows/multiplayer
opt_build_c       windows/music_credits
opt_build_c       windows/network_status
opt_build_c       windows/news
opt_build_c       windows/news_options
opt_build_c       windows/new_campaign
opt_build_c       windows/new_ride
opt_build_c       windows/options
opt_build_c       windows/park
opt_build_c       windows/player
opt_build_c       windows/publisher_credits
opt_build_c       windows/research
opt_build_c       windows/ride
opt_build_c       windows/ride_construction
opt_build_c       windows/ride_list
opt_build_c       windows/save_prompt
opt_build_c       windows/scenery
build_cpp         windows/server_list
opt_build_c       windows/server_start
opt_build_c       windows/shortcut_keys
opt_build_c       windows/shortcut_key_change
opt_build_c       windows/sign
opt_build_c       windows/staff
opt_build_c       windows/staff_fire_prompt
opt_build_c       windows/staff_list
opt_build_c       windows/text_input
opt_build_c       windows/themes
opt_build_c       windows/tile_inspector
opt_build_c       windows/title_command_editor
opt_build_c       windows/title_editor
opt_build_c       windows/title_exit
opt_build_c       windows/title_logo
opt_build_c       windows/title_menu
opt_build_c       windows/title_options
opt_build_c       windows/title_scenarioselect
opt_build_c       windows/tooltip
opt_build_c       windows/top_toolbar
opt_build_c       windows/track_list
opt_build_c       windows/track_manage
opt_build_c       windows/track_place
opt_build_c       windows/viewport
opt_build_c       windows/view_clipping
opt_build_c       windows/water
build_cpp         world/Balloon
build_cpp         world/banner
build_cpp         world/Climate
build_cpp         world/Duck
build_cpp         world/entrance
opt_build_c       world/footpath
build_cpp         world/Fountain
opt_build_c       world/map
opt_build_c       world/mapgen
opt_build_c       world/map_animation
opt_build_c       world/map_helpers
opt_build_c       world/money_effect
opt_build_c       world/park
opt_build_c       world/particle
opt_build_c       world/scenery
opt_build_c       world/sprite
opt_build_c       world/tile_inspector
build_cpp         world/wall


buildui() {
    echo $1
    mkdir -p $(dirname "../build/CMakeFiles/openrct2.dir/src/openrct2-ui/$1")
    emcc  -DNO_RCT2 -DOPENGL_NO_LINK -DOPENRCT2_BRANCH=\"develop\" -D__ENABLE_LIGHTFX__ -Dlibopenrct2_EXPORTS \
        -I/usr/lib/x86_64-linux-gnu/libzip/include -I/usr/include/libpng12 \
        -stdlib=libc++ -std=gnu++14 -S -emit-llvm -O3 -fmax-type-align=1 \
        -DDISABLE_NETWORK=1 -DDISABLE_HTTP -DDISABLE_TWITCH -D__amd64__ -D__LINUX__ -D__linux__ -D_LIBCPP_HAS_MUSL_LIBC \
        -I../include -I../include/sdl -fstrict-aliasing -I../src -fstrict-aliasing \
        -Werror -Wundef -Wmissing-declarations -Winit-self -Wall -Wno-unknown-pragmas -Wno-unused-function -Wno-missing-braces \
        -Wno-comment -Wshadow  -Wmissing-declarations -Wnonnull \
        -fPIC  \
        -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/$1.cpp.o -c ../src/openrct2-ui/$1.cpp
    llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/$1.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/$1.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/$1.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/$1.cpp.ll || echo nf
}

buildui   audio/AudioChannel
buildui   audio/AudioContext
buildui   audio/AudioMixer
buildui   audio/FileAudioSource
buildui   audio/MemoryAudioSource
buildui   CursorData
buildui   CursorRepository
buildui   drawing/engines/SoftwareDrawingEngine
buildui   TextComposition
buildui   Ui
buildui   UiContext
buildui   UiContext.Linux
buildui   UiContext.Win32


emcc ../src/bindings.cpp -std=c++11 -I../include/sdl -o ../build/bindings.ll -S -emit-llvm -stdlib=libc++
