#!/bin/bash
set -e

build_c() {
    echo $1
    emcc  -DNO_RCT2 -DOPENGL_NO_LINK -DOPENRCT2_BRANCH=\"develop\" -D__ENABLE_LIGHTFX__ -Dlibopenrct2_EXPORTS \
        -I/usr/lib/x86_64-linux-gnu/libzip/include -I/usr/include/SDL2 -I/usr/include/libpng12 -I/usr/include/freetype2 \
        -std=gnu11 -S -emit-llvm -fmax-type-align=1 \
        -DDISABLE_NETWORK=1 -DDISABLE_HTTP -DDISABLE_TWITCH -D__amd64__ -D__LINUX__ -D__linux__ -D_LIBCPP_HAS_MUSL_LIBC \
        -I../lib/include/jansson/ -I../include -fstrict-aliasing \
        -Werror -Wundef -Wmissing-declarations -Winit-self -Wall -Wno-unknown-pragmas -Wno-unused-function -Wno-missing-braces \
        -Wimplicit -Wno-comment -Wshadow  -Wmissing-declarations -Wnonnull -DDEBUG=0 \
        -fPIC \
        -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.o -c ../src/openrct2/$1.c
    llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.ll || echo nf
}
build_cpp() {
    echo $1
    emcc -DNO_RCT2 -DOPENGL_NO_LINK -DOPENRCT2_BRANCH=\"develop\" -D__ENABLE_LIGHTFX__ -Dlibopenrct2_EXPORTS \
        -I/usr/lib/x86_64-linux-gnu/libzip/include -I/usr/include/SDL2 -I/usr/include/libpng12 -I/usr/include/freetype2 \
        -stdlib=libc++ -std=gnu++14 -S -emit-llvm -O3 -fmax-type-align=1 \
        -DDISABLE_NETWORK=1 -DDISABLE_HTTP -DDISABLE_TWITCH -D__amd64__ -D__LINUX__ -D__linux__ -D_LIBCPP_HAS_MUSL_LIBC \
        -I../lib/include/jansson/ -I../include -fstrict-aliasing \
        -Werror -Wundef -Wmissing-declarations -Winit-self -Wall -Wno-unknown-pragmas -Wno-unused-function -Wno-missing-braces \
        -Wno-comment -Wshadow  -Wmissing-declarations -Wnonnull -DDEBUG=0 \
        -fPIC  \
        -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.o -c ../src/openrct2/$1.cpp
    llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.ll || echo nf
}
opt_build_c() {
    echo $1
    emcc  -DNO_RCT2 -DOPENGL_NO_LINK -DOPENRCT2_BRANCH=\"develop\" -D__ENABLE_LIGHTFX__ -Dlibopenrct2_EXPORTS \
        -I/usr/lib/x86_64-linux-gnu/libzip/include -I/usr/include/SDL2 -I/usr/include/libpng12 -I/usr/include/freetype2 \
        -std=gnu11 -S -emit-llvm -fmax-type-align=1 \
        -DDISABLE_NETWORK=1 -DDISABLE_HTTP -DDISABLE_TWITCH -D__amd64__ -D__LINUX__ -D__linux__ -D_LIBCPP_HAS_MUSL_LIBC \
        -I../lib/include/jansson/ -I../include -fstrict-aliasing \
        -Werror -Wundef -Wmissing-declarations -Winit-self -Wall -Wno-unknown-pragmas -Wno-unused-function -Wno-missing-braces \
        -Wimplicit -Wno-comment -Wshadow  -Wmissing-declarations -Wnonnull -DDEBUG=0 \
        -fPIC -O3 \
        -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.o -c ../src/openrct2/$1.c
    llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.c.ll || echo nf
}
opt_build_cpp() {
    echo $1
    emcc -DNO_RCT2 -DOPENGL_NO_LINK -DOPENRCT2_BRANCH=\"develop\" -D__ENABLE_LIGHTFX__ -Dlibopenrct2_EXPORTS \
        -I/usr/lib/x86_64-linux-gnu/libzip/include -I/usr/include/SDL2 -I/usr/include/libpng12 -I/usr/include/freetype2 \
        -stdlib=libc++ -std=gnu++14 -S -emit-llvm -O3 -fmax-type-align=1 \
        -DDISABLE_NETWORK=1 -DDISABLE_HTTP -DDISABLE_TWITCH -D__amd64__ -D__LINUX__ -D__linux__ -D_LIBCPP_HAS_MUSL_LIBC \
        -I../lib/include/jansson/ -I../include -fstrict-aliasing \
        -Werror -Wundef -Wmissing-declarations -Winit-self -Wall -Wno-unknown-pragmas -Wno-unused-function -Wno-missing-braces \
        -Wno-comment -Wshadow  -Wmissing-declarations -Wnonnull -DDEBUG=0 \
        -fPIC -O3 \
        -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.o -c ../src/openrct2/$1.cpp
    llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/$1.cpp.ll || echo nf
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
build_cpp         Context
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
opt_build_c           drawing/drawing
opt_build_cpp     drawing/drawing_fast
opt_build_c           drawing/font
opt_build_cpp         drawing/Image
opt_build_c           drawing/lightfx
opt_build_c           drawing/line
opt_build_cpp         drawing/NewDrawing
opt_build_cpp         drawing/Rain
opt_build_c           drawing/rect
build_c           drawing/scrolling_text
opt_build_cpp         drawing/sprite
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
opt_build_cpp     localisation/language
opt_build_cpp     localisation/LanguagePack
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
build_c           object_list
build_cpp         OpenRCT2
build_c           paint/map_element/banner
build_c           paint/map_element/entrance
build_c           paint/map_element/fence
opt_build_c       paint/map_element/map_element
build_c           paint/map_element/path
build_c           paint/map_element/scenery
build_c           paint/map_element/scenery_multiple
build_c           paint/map_element/surface
opt_build_c       paint/paint
opt_build_c           paint/paint_helpers
opt_build_c           paint/sprite/litter
opt_build_c           paint/sprite/misc
opt_build_c           paint/sprite/peep
opt_build_c           paint/sprite/sprite
opt_build_c           paint/supports
build_cpp         ParkImporter
build_c           peep/peep
build_c           peep/peep_data
build_c           peep/staff
build_cpp         platform/crash
build_c           platform/linux
build_cpp         platform/Platform2
build_c           platform/posix
build_c           platform/shared
build_c           platform/windows
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
opt_build_c           ride/cable_lift
opt_build_c           ride/coaster/air_powered_vertical_coaster
opt_build_c           ride/coaster/bobsleigh_coaster
opt_build_c           ride/coaster/bolliger_mabillard_track
opt_build_c           ride/coaster/compact_inverted_coaster
opt_build_c           ride/coaster/corkscrew_roller_coaster
opt_build_c           ride/coaster/flying_roller_coaster
opt_build_c           ride/coaster/giga_coaster
opt_build_c           ride/coaster/heartline_twister_coaster
opt_build_c           ride/coaster/inverted_hairpin_coaster
opt_build_c           ride/coaster/inverted_impulse_coaster
opt_build_c           ride/coaster/inverted_roller_coaster
opt_build_c           ride/coaster/junior_roller_coaster
opt_build_c           ride/coaster/lay_down_roller_coaster
opt_build_c           ride/coaster/lim_launched_roller_coaster
opt_build_c           ride/coaster/looping_roller_coaster
opt_build_c           ride/coaster/mine_ride
opt_build_c           ride/coaster/mine_train_coaster
opt_build_c           ride/coaster/mini_roller_coaster
opt_build_c           ride/coaster/mini_suspended_coaster
opt_build_c           ride/coaster/multi_dimension_roller_coaster
opt_build_c           ride/coaster/reverser_roller_coaster
opt_build_c           ride/coaster/reverse_freefall_coaster
opt_build_c           ride/coaster/side_friction_roller_coaster
opt_build_c           ride/coaster/stand_up_roller_coaster
opt_build_c           ride/coaster/steeplechase
opt_build_c           ride/coaster/suspended_swinging_coaster
opt_build_c           ride/coaster/twister_roller_coaster
opt_build_c           ride/coaster/vertical_drop_roller_coaster
opt_build_c           ride/coaster/virginia_reel
opt_build_c           ride/coaster/wild_mouse
opt_build_c           ride/coaster/wooden_roller_coaster
opt_build_c           ride/coaster/wooden_wild_mouse
opt_build_c           ride/gentle/car_ride
opt_build_c           ride/gentle/circus_show
opt_build_c           ride/gentle/crooked_house
opt_build_c           ride/gentle/dodgems
opt_build_c           ride/gentle/ferris_wheel
opt_build_c           ride/gentle/flying_saucers
opt_build_c           ride/gentle/ghost_train
opt_build_c           ride/gentle/haunted_house
opt_build_c           ride/gentle/maze
opt_build_c           ride/gentle/merry_go_round
opt_build_c           ride/gentle/mini_golf
opt_build_c           ride/gentle/mini_helicopters
opt_build_c           ride/gentle/monorail_cycles
opt_build_c           ride/gentle/observation_tower
opt_build_c           ride/gentle/space_rings
opt_build_c           ride/gentle/spiral_slide
opt_build_c           ride/ride
opt_build_c           ride/ride_data
opt_build_c           ride/ride_ratings
opt_build_c           ride/shops/facility
opt_build_c           ride/shops/shop
opt_build_c           ride/station
opt_build_c           ride/thrill/3d_cinema
opt_build_c           ride/thrill/enterprise
opt_build_c           ride/thrill/go_karts
opt_build_c           ride/thrill/launched_freefall
opt_build_c           ride/thrill/magic_carpet
opt_build_c           ride/thrill/motion_simulator
opt_build_c           ride/thrill/pirate_ship
opt_build_c           ride/thrill/roto_drop
opt_build_c           ride/thrill/swinging_inverter_ship
opt_build_c           ride/thrill/top_spin
opt_build_c           ride/thrill/twist
opt_build_c           ride/track
opt_build_cpp         ride/TrackDesignRepository
opt_build_c           ride/track_data
opt_build_c           ride/track_data_old
opt_build_c           ride/track_design
opt_build_c           ride/track_design_save
opt_build_c           ride/track_paint
opt_build_c           ride/transport/chairlift
opt_build_c           ride/transport/lift
opt_build_c           ride/transport/miniature_railway
opt_build_c           ride/transport/monorail
opt_build_c           ride/transport/suspended_monorail
opt_build_c           ride/vehicle
opt_build_c           ride/vehicle_data
opt_build_c           ride/vehicle_paint
opt_build_c           ride/water/boat_ride
opt_build_c           ride/water/dingy_slide
opt_build_c           ride/water/log_flume
opt_build_c           ride/water/river_rapids
opt_build_c           ride/water/splash_boats
opt_build_c           ride/water/submarine_ride
opt_build_c           ride/water/water_coaster
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
build_c           windows/about
build_c           windows/banner
build_c           windows/changelog
build_c           windows/cheats
build_c           windows/clear_scenery
build_c           windows/custom_currency
build_c           windows/debug_paint
build_c           windows/demolish_ride_prompt
build_c           windows/dropdown
build_c           windows/editor_bottom_toolbar
build_c           windows/editor_inventions_list
build_c           windows/editor_main
build_c           windows/editor_objective_options
build_c           windows/editor_object_selection
build_c           windows/editor_scenario_options
build_c           windows/error
build_c           windows/finances
build_c           windows/footpath
build_c           windows/game_bottom_toolbar
build_c           windows/guest
build_c           windows/guest_list
build_c           windows/install_track
build_c           windows/land
build_c           windows/land_rights
build_c           windows/loadsave
build_c           windows/main
build_c           windows/map
build_c           windows/mapgen
build_c           windows/map_tooltip
build_c           windows/maze_construction
build_c           windows/multiplayer
build_c           windows/music_credits
build_c           windows/network_status
build_c           windows/news
build_c           windows/news_options
build_c           windows/new_campaign
build_c           windows/new_ride
build_c           windows/options
build_c           windows/park
build_c           windows/player
build_c           windows/publisher_credits
build_c           windows/research
build_c           windows/ride
build_c           windows/ride_construction
build_c           windows/ride_list
build_c           windows/save_prompt
build_c           windows/scenery
build_cpp         windows/server_list
build_c           windows/server_start
build_c           windows/shortcut_keys
build_c           windows/shortcut_key_change
build_c           windows/sign
build_c           windows/staff
build_c           windows/staff_fire_prompt
build_c           windows/staff_list
build_c           windows/text_input
build_c           windows/themes
build_c           windows/tile_inspector
build_c           windows/title_command_editor
build_c           windows/title_editor
build_c           windows/title_exit
build_c           windows/title_logo
build_c           windows/title_menu
build_c           windows/title_options
build_c           windows/title_scenarioselect
build_c           windows/tooltip
build_c           windows/top_toolbar
build_c           windows/track_list
build_c           windows/track_manage
build_c           windows/track_place
build_c           windows/viewport
build_c           windows/view_clipping
build_c           windows/water
build_cpp         world/Balloon
build_cpp         world/banner
build_cpp         world/Climate
build_cpp         world/Duck
build_cpp         world/entrance
build_c           world/footpath
build_cpp         world/Fountain
build_c           world/map
build_c           world/mapgen
build_c           world/map_animation
build_c           world/map_helpers
build_c           world/money_effect
build_c           world/park
build_c           world/particle
build_c           world/scenery
build_c           world/sprite
build_c           world/tile_inspector
build_cpp         world/wall

llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/AudioChannel.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/AudioChannel.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/AudioChannel.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/AudioChannel.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/AudioContext.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/AudioContext.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/AudioContext.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/AudioContext.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/AudioMixer.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/AudioMixer.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/AudioMixer.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/AudioMixer.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/FileAudioSource.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/FileAudioSource.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/FileAudioSource.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/FileAudioSource.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/MemoryAudioSource.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/MemoryAudioSource.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/MemoryAudioSource.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/MemoryAudioSource.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/CursorData.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/CursorData.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/CursorData.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/CursorData.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/CursorRepository.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/CursorRepository.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/CursorRepository.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/CursorRepository.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/CopyFramebufferShader.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/CopyFramebufferShader.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/CopyFramebufferShader.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/CopyFramebufferShader.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/DrawImageShader.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/DrawImageShader.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/DrawImageShader.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/DrawImageShader.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/DrawLineShader.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/DrawLineShader.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/DrawLineShader.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/DrawLineShader.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/FillRectShader.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/FillRectShader.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/FillRectShader.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/FillRectShader.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLAPI.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLAPI.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLAPI.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLAPI.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLDrawingEngine.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLDrawingEngine.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLDrawingEngine.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLDrawingEngine.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLFramebuffer.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLFramebuffer.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLFramebuffer.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLFramebuffer.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLShaderProgram.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLShaderProgram.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLShaderProgram.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLShaderProgram.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/SwapFramebuffer.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/SwapFramebuffer.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/SwapFramebuffer.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/SwapFramebuffer.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/TextureCache.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/TextureCache.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/TextureCache.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/TextureCache.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/SoftwareDrawingEngine.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/SoftwareDrawingEngine.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/SoftwareDrawingEngine.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/SoftwareDrawingEngine.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/TextComposition.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/TextComposition.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/TextComposition.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/TextComposition.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/Ui.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/Ui.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/Ui.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/Ui.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/UiContext.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/UiContext.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/UiContext.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/UiContext.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/UiContext.Linux.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/UiContext.Linux.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/UiContext.Linux.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/UiContext.Linux.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/UiContext.Win32.cpp.o -o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/UiContext.Win32.cpp.ll || mv ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/UiContext.Win32.cpp.o ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/UiContext.Win32.cpp.ll || echo nf

emcc ../src/bindings.cpp -std=c++11 -o ../build/bindings.ll -S -emit-llvm -stdlib=libc++
