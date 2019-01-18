#!/bin/bash
set -e

# emcc ../src/patches.cpp -std=c++11 -o ../build/patches.js -I/usr/include/SDL2 -stdlib=libc++

emcc \
    ../build/bindings.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/audio.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/AudioMixer.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/DummyAudioContext.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/NullAudioSource.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cheats.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/CommandLine.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/ConvertCommand.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/RootCommands.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/ScreenshotCommands.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/SpriteCommands.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/UriHandler.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline_sprite.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/Config.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/IniReader.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/IniWriter.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/KeyboardShortcuts.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/Context.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Console.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Diagnostics.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/File.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/FileScanner.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Guard.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/IStream.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Json.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/MemoryStream.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Path.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/String.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/textinputbuffer.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Zip.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/diagnostic.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/drawing.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/drawing_fast.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/font.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/Image.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/lightfx.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/line.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/NewDrawing.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/Rain.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/rect.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/scrolling_text.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/sprite.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/string.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/editor.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/FileClassifier.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/game.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/Imaging.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/input.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/chat.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/colour.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/console.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/Fonts.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/graph.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/keyboard_shortcut.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/screenshot.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/Theme.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/viewport.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/viewport_interaction.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/widget.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/window.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/intro.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/convert.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/currency.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/date.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/format_codes.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/language.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/LanguagePack.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/localisation.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/real_names.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/user.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/utf8.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/award.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/finance.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/marketing.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/news_item.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/research.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/http.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/network.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/twitch.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/BannerObject.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/EntranceObject.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/FootpathItemObject.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/FootpathObject.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ImageTable.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/LargeSceneryObject.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/Object.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ObjectFactory.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ObjectManager.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ObjectRepository.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/RideObject.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/SceneryGroupObject.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/SmallSceneryObject.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/StexObject.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/StringTable.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/WallObject.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/WaterObject.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object_list.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/OpenRCT2.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/banner.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/entrance.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/fence.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/map_element.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/path.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/scenery.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/scenery_multiple.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/surface.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/paint.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/paint_helpers.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/litter.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/misc.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/peep.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/sprite.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/supports.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ParkImporter.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/peep/peep.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/peep/peep_data.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/peep/staff.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/crash.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/linux.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/Platform2.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/posix.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/shared.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/PlatformEnvironment.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct1/S4Importer.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct1/tables.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct1.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerChunk.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerChunkReader.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerChunkWriter.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerEncoding.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/addresses.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/hook.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/interop.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/S6Exporter.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/S6Importer.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/cable_lift.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/air_powered_vertical_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/bobsleigh_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/bolliger_mabillard_track.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/compact_inverted_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/corkscrew_roller_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/flying_roller_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/giga_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/heartline_twister_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/inverted_hairpin_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/inverted_impulse_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/inverted_roller_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/junior_roller_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/lay_down_roller_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/lim_launched_roller_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/looping_roller_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mine_ride.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mine_train_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mini_roller_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mini_suspended_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/multi_dimension_roller_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/reverser_roller_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/reverse_freefall_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/side_friction_roller_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/stand_up_roller_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/steeplechase.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/suspended_swinging_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/twister_roller_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/vertical_drop_roller_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/virginia_reel.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/wild_mouse.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/wooden_roller_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/wooden_wild_mouse.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/car_ride.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/circus_show.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/crooked_house.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/dodgems.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/ferris_wheel.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/flying_saucers.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/ghost_train.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/haunted_house.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/maze.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/merry_go_round.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/mini_golf.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/mini_helicopters.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/monorail_cycles.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/observation_tower.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/space_rings.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/spiral_slide.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/ride.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/ride_data.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/ride_ratings.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/shops/facility.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/shops/shop.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/station.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/3d_cinema.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/enterprise.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/go_karts.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/launched_freefall.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/magic_carpet.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/motion_simulator.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/pirate_ship.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/roto_drop.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/swinging_inverter_ship.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/top_spin.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/twist.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/TrackDesignRepository.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_data.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_data_old.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_design.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_design_save.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_paint.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/chairlift.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/lift.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/miniature_railway.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/monorail.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/suspended_monorail.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/vehicle.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/vehicle_data.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/vehicle_paint.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/boat_ride.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/dingy_slide.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/log_flume.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/river_rapids.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/splash_boats.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/submarine_ride.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/water_coaster.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/scenario/scenario.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/scenario/ScenarioRepository.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/scenario/ScenarioSources.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleScreen.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleSequence.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleSequenceManager.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleSequencePlayer.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ui/DummyUiContext.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/util/sawyercoding.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/util/util.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/Version.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/about.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/banner.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/changelog.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/cheats.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/clear_scenery.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/custom_currency.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/debug_paint.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/demolish_ride_prompt.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/dropdown.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_bottom_toolbar.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_inventions_list.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_main.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_objective_options.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_object_selection.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_scenario_options.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/error.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/finances.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/footpath.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/game_bottom_toolbar.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/guest.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/guest_list.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/install_track.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/land.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/land_rights.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/loadsave.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/main.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/map.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/mapgen.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/map_tooltip.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/maze_construction.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/multiplayer.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/music_credits.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/network_status.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/news.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/news_options.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/new_campaign.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/new_ride.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/options.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/park.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/player.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/publisher_credits.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/research.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/ride.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/ride_construction.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/ride_list.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/save_prompt.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/scenery.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/server_list.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/server_start.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/shortcut_keys.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/shortcut_key_change.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/sign.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/staff.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/staff_fire_prompt.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/staff_list.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/text_input.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/themes.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/tile_inspector.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_command_editor.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_editor.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_exit.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_logo.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_menu.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_options.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_scenarioselect.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/tooltip.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/top_toolbar.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/track_list.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/track_manage.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/track_place.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/viewport.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/view_clipping.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/water.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Balloon.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/banner.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Climate.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Duck.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/entrance.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/footpath.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Fountain.cpp.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/map.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/mapgen.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/map_animation.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/map_helpers.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/money_effect.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/park.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/particle.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/scenery.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/sprite.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/tile_inspector.c.ll \
    ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/wall.cpp.ll \
    ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/AudioChannel.cpp.ll \
    ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/AudioContext.cpp.ll \
    ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/AudioMixer.cpp.ll \
    ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/FileAudioSource.cpp.ll \
    ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/audio/MemoryAudioSource.cpp.ll \
    ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/CursorData.cpp.ll \
    ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/CursorRepository.cpp.ll \
    ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/SoftwareDrawingEngine.cpp.ll \
    ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/TextComposition.cpp.ll \
    ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/Ui.cpp.ll \
    ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/UiContext.cpp.ll \
    ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/UiContext.Linux.cpp.ll \
    -o ../www/openrct2.js --memory-init-file 1 \
    -s USE_SDL=2 \
    -s TOTAL_MEMORY=1024*1024*1024 \
    -s DISABLE_EXCEPTION_CATCHING=1 \
    -s AGGRESSIVE_VARIABLE_ELIMINATION=1 \
    -s ELIMINATE_DUPLICATE_FUNCTIONS=1 \
    -s ASSERTIONS=0 \
    -s INLINING_LIMIT=1000 \
    -s ERROR_ON_UNDEFINED_SYMBOLS=0 \
    -s WASM=0 \
    --js-transform "sed -i '' -e 's/,_Emscripten_CreateCursor_....,/,_Emscripten_CreateCursor,/g' -e 's/_dlopen() {/_dlopen() {return 0;/g' -e 's/function _Blit1to4(/function _Blit1to4x(/g' -e 's/__ZN8OpenRCT27Context11RunGameLoopEv(\$0);/__ZN8OpenRCT27Context11RunGameLoopEvX(\$0);/g'" \
    -s "EXPORTED_FUNCTIONS=['_main','_malloc','_Emscripten_CreateCursor','__ZN8OpenRCT27Context16RunVariableFrameEv','__ZN8OpenRCT27Context13RunFixedFrameEv','__ZN8OpenRCT27Context11RunGameLoopEvX']" \
    -O2 -g2

    # debug: -O1
    # release: -Oz -g3

    # -s ALLOW_MEMORY_GROWTH=1 \

    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkAction.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkConnection.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkGroup.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkKey.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkPacket.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkPlayer.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkServerAdvertiser.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkUser.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/ServerList.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/TcpSocket.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/windows.c.ll \
    # ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/CopyFramebufferShader.cpp.ll \
    # ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/DrawImageShader.cpp.ll \
    # ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/DrawLineShader.cpp.ll \
    # ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/FillRectShader.cpp.ll \
    # ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLAPI.cpp.ll \
    # ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLDrawingEngine.cpp.ll \
    # ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLFramebuffer.cpp.ll \
    # ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/OpenGLShaderProgram.cpp.ll \
    # ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/SwapFramebuffer.cpp.ll \
    # ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/drawing/engines/opengl/TextureCache.cpp.ll \
    # ../build/CMakeFiles/openrct2.dir/src/openrct2-ui/UiContext.Win32.cpp.ll \


# --llvm-lto 3 \ # NOT STABLE!

# -s DEMANGLE_SUPPORT=1


