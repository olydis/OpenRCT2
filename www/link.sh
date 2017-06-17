#!/bin/bash
set -e

emcc -DNO_RCT2 -DOPENGL_NO_LINK -DOPENRCT2_BRANCH=\"develop\" -D__ENABLE_LIGHTFX__ -Dlibopenrct2_EXPORTS \
    -I/usr/lib/x86_64-linux-gnu/libzip/include -I/usr/include/SDL2 -I/usr/include/libpng12 -I/usr/include/freetype2 \
    -stdlib=libc++ -std=gnu++14 -S -emit-llvm -O3 -fmax-type-align=1 \
    -DDISABLE_NETWORK=1 -DDISABLE_HTTP -DDISABLE_TWITCH -D__amd64__ -D__LINUX__ -D__linux__ -D_LIBCPP_HAS_MUSL_LIBC \
    -I../lib/include/jansson/ -I../include -fstrict-aliasing \
    -Werror -Wundef -Wmissing-declarations -Winit-self -Wall -Wno-unknown-pragmas -Wno-unused-function -Wno-missing-braces \
    -Wno-comment -Wshadow  -Wmissing-declarations -Wnonnull -DDEBUG=0 -fPIC  \
    -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/drawing_fast.cpp.o -c ../src/openrct2/drawing/drawing_fast.cpp


llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/audio.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/audio.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/audio.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/audio.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/AudioMixer.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/AudioMixer.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/AudioMixer.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/AudioMixer.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/DummyAudioContext.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/DummyAudioContext.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/DummyAudioContext.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/DummyAudioContext.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/NullAudioSource.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/NullAudioSource.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/NullAudioSource.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/audio/NullAudioSource.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cheats.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cheats.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cheats.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cheats.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/CommandLine.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/CommandLine.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/CommandLine.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/CommandLine.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/ConvertCommand.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/ConvertCommand.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/ConvertCommand.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/ConvertCommand.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/RootCommands.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/RootCommands.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/RootCommands.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/RootCommands.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/ScreenshotCommands.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/ScreenshotCommands.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/ScreenshotCommands.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/ScreenshotCommands.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/SpriteCommands.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/SpriteCommands.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/SpriteCommands.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/SpriteCommands.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/UriHandler.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/UriHandler.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/UriHandler.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline/UriHandler.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline_sprite.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline_sprite.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline_sprite.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/cmdline_sprite.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/Config.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/Config.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/Config.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/Config.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/IniReader.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/IniReader.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/IniReader.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/IniReader.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/IniWriter.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/IniWriter.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/IniWriter.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/IniWriter.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/KeyboardShortcuts.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/KeyboardShortcuts.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/KeyboardShortcuts.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/config/KeyboardShortcuts.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/Context.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/Context.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/Context.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/Context.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Console.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Console.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Console.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Console.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Diagnostics.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Diagnostics.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Diagnostics.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Diagnostics.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/File.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/File.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/File.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/File.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/FileScanner.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/FileScanner.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/FileScanner.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/FileScanner.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Guard.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Guard.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Guard.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Guard.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/IStream.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/IStream.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/IStream.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/IStream.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Json.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Json.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Json.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Json.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/MemoryStream.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/MemoryStream.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/MemoryStream.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/MemoryStream.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Path.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Path.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Path.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Path.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/String.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/String.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/String.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/String.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/textinputbuffer.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/textinputbuffer.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/textinputbuffer.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/textinputbuffer.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Zip.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Zip.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Zip.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/core/Zip.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/diagnostic.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/diagnostic.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/diagnostic.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/diagnostic.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/drawing.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/drawing.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/drawing.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/drawing.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/drawing_fast.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/drawing_fast.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/drawing_fast.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/drawing_fast.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/font.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/font.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/font.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/font.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/Image.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/Image.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/Image.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/Image.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/lightfx.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/lightfx.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/lightfx.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/lightfx.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/line.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/line.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/line.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/line.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/NewDrawing.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/NewDrawing.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/NewDrawing.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/NewDrawing.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/Rain.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/Rain.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/Rain.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/Rain.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/rect.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/rect.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/rect.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/rect.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/scrolling_text.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/scrolling_text.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/scrolling_text.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/scrolling_text.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/sprite.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/sprite.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/sprite.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/sprite.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/string.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/string.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/string.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/drawing/string.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/editor.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/editor.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/editor.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/editor.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/FileClassifier.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/FileClassifier.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/FileClassifier.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/FileClassifier.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/game.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/game.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/game.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/game.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/Imaging.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/Imaging.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/Imaging.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/Imaging.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/input.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/input.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/input.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/input.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/chat.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/chat.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/chat.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/chat.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/colour.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/colour.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/colour.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/colour.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/console.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/console.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/console.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/console.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/Fonts.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/Fonts.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/Fonts.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/Fonts.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/graph.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/graph.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/graph.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/graph.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/keyboard_shortcut.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/keyboard_shortcut.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/keyboard_shortcut.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/keyboard_shortcut.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/screenshot.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/screenshot.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/screenshot.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/screenshot.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/Theme.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/Theme.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/Theme.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/Theme.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/viewport.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/viewport.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/viewport.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/viewport.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/viewport_interaction.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/viewport_interaction.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/viewport_interaction.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/viewport_interaction.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/widget.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/widget.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/widget.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/widget.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/window.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/window.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/window.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/interface/window.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/intro.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/intro.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/intro.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/intro.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/convert.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/convert.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/convert.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/convert.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/currency.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/currency.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/currency.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/currency.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/date.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/date.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/date.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/date.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/format_codes.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/format_codes.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/format_codes.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/format_codes.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/language.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/language.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/language.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/language.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/LanguagePack.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/LanguagePack.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/LanguagePack.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/LanguagePack.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/localisation.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/localisation.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/localisation.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/localisation.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/real_names.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/real_names.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/real_names.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/real_names.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/user.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/user.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/user.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/user.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/utf8.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/utf8.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/utf8.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/localisation/utf8.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/award.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/award.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/award.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/award.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/finance.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/finance.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/finance.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/finance.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/marketing.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/marketing.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/marketing.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/marketing.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/news_item.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/news_item.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/news_item.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/news_item.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/research.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/research.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/research.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/management/research.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/http.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/http.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/http.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/http.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/network.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/network.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/network.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/network.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkAction.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkAction.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkAction.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkAction.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkConnection.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkConnection.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkConnection.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkConnection.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkGroup.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkGroup.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkGroup.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkGroup.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkKey.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkKey.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkKey.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkKey.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkPacket.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkPacket.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkPacket.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkPacket.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkPlayer.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkPlayer.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkPlayer.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkPlayer.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkServerAdvertiser.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkServerAdvertiser.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkServerAdvertiser.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkServerAdvertiser.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkUser.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkUser.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkUser.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkUser.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/ServerList.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/ServerList.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/ServerList.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/ServerList.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/TcpSocket.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/TcpSocket.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/TcpSocket.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/TcpSocket.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/twitch.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/twitch.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/twitch.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/twitch.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/BannerObject.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/BannerObject.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/BannerObject.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/BannerObject.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/EntranceObject.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/EntranceObject.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/EntranceObject.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/EntranceObject.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/FootpathItemObject.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/FootpathItemObject.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/FootpathItemObject.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/FootpathItemObject.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/FootpathObject.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/FootpathObject.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/FootpathObject.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/FootpathObject.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ImageTable.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ImageTable.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ImageTable.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ImageTable.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/LargeSceneryObject.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/LargeSceneryObject.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/LargeSceneryObject.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/LargeSceneryObject.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/Object.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/Object.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/Object.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/Object.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ObjectFactory.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ObjectFactory.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ObjectFactory.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ObjectFactory.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ObjectManager.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ObjectManager.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ObjectManager.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ObjectManager.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ObjectRepository.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ObjectRepository.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ObjectRepository.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/ObjectRepository.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/RideObject.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/RideObject.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/RideObject.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/RideObject.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/SceneryGroupObject.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/SceneryGroupObject.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/SceneryGroupObject.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/SceneryGroupObject.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/SmallSceneryObject.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/SmallSceneryObject.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/SmallSceneryObject.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/SmallSceneryObject.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/StexObject.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/StexObject.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/StexObject.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/StexObject.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/StringTable.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/StringTable.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/StringTable.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/StringTable.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/WallObject.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/WallObject.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/WallObject.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/WallObject.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/WaterObject.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/WaterObject.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/WaterObject.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object/WaterObject.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object_list.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object_list.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object_list.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/object_list.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/OpenRCT2.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/OpenRCT2.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/OpenRCT2.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/OpenRCT2.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/banner.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/banner.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/banner.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/banner.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/entrance.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/entrance.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/entrance.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/entrance.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/fence.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/fence.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/fence.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/fence.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/map_element.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/map_element.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/map_element.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/map_element.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/path.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/path.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/path.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/path.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/scenery.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/scenery.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/scenery.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/scenery.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/scenery_multiple.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/scenery_multiple.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/scenery_multiple.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/scenery_multiple.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/surface.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/surface.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/surface.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/map_element/surface.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/paint.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/paint.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/paint.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/paint.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/paint_helpers.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/paint_helpers.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/paint_helpers.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/paint_helpers.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/litter.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/litter.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/litter.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/litter.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/misc.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/misc.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/misc.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/misc.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/peep.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/peep.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/peep.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/peep.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/sprite.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/sprite.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/sprite.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/sprite/sprite.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/supports.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/supports.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/supports.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/paint/supports.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ParkImporter.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ParkImporter.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ParkImporter.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ParkImporter.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/peep/peep.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/peep/peep.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/peep/peep.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/peep/peep.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/peep/peep_data.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/peep/peep_data.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/peep/peep_data.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/peep/peep_data.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/peep/staff.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/peep/staff.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/peep/staff.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/peep/staff.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/crash.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/crash.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/crash.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/crash.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/linux.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/linux.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/linux.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/linux.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/Platform2.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/Platform2.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/Platform2.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/Platform2.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/posix.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/posix.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/posix.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/posix.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/shared.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/shared.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/shared.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/shared.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/windows.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/windows.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/windows.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/platform/windows.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/PlatformEnvironment.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/PlatformEnvironment.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/PlatformEnvironment.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/PlatformEnvironment.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct1/S4Importer.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct1/S4Importer.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct1/S4Importer.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct1/S4Importer.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct1/tables.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct1/tables.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct1/tables.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct1/tables.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct1.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct1.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct1.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct1.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerChunk.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerChunk.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerChunk.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerChunk.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerChunkReader.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerChunkReader.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerChunkReader.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerChunkReader.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerChunkWriter.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerChunkWriter.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerChunkWriter.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerChunkWriter.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerEncoding.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerEncoding.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerEncoding.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct12/SawyerEncoding.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/addresses.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/addresses.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/addresses.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/addresses.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/hook.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/hook.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/hook.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/hook.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/interop.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/interop.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/interop.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/interop.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/S6Exporter.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/S6Exporter.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/S6Exporter.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/S6Exporter.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/S6Importer.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/S6Importer.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/S6Importer.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2/S6Importer.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/rct2.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/cable_lift.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/cable_lift.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/cable_lift.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/cable_lift.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/air_powered_vertical_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/air_powered_vertical_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/air_powered_vertical_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/air_powered_vertical_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/bobsleigh_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/bobsleigh_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/bobsleigh_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/bobsleigh_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/bolliger_mabillard_track.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/bolliger_mabillard_track.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/bolliger_mabillard_track.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/bolliger_mabillard_track.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/compact_inverted_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/compact_inverted_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/compact_inverted_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/compact_inverted_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/corkscrew_roller_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/corkscrew_roller_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/corkscrew_roller_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/corkscrew_roller_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/flying_roller_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/flying_roller_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/flying_roller_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/flying_roller_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/giga_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/giga_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/giga_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/giga_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/heartline_twister_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/heartline_twister_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/heartline_twister_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/heartline_twister_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/inverted_hairpin_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/inverted_hairpin_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/inverted_hairpin_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/inverted_hairpin_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/inverted_impulse_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/inverted_impulse_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/inverted_impulse_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/inverted_impulse_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/inverted_roller_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/inverted_roller_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/inverted_roller_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/inverted_roller_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/junior_roller_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/junior_roller_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/junior_roller_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/junior_roller_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/lay_down_roller_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/lay_down_roller_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/lay_down_roller_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/lay_down_roller_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/lim_launched_roller_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/lim_launched_roller_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/lim_launched_roller_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/lim_launched_roller_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/looping_roller_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/looping_roller_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/looping_roller_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/looping_roller_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mine_ride.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mine_ride.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mine_ride.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mine_ride.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mine_train_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mine_train_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mine_train_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mine_train_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mini_roller_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mini_roller_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mini_roller_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mini_roller_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mini_suspended_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mini_suspended_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mini_suspended_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/mini_suspended_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/multi_dimension_roller_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/multi_dimension_roller_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/multi_dimension_roller_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/multi_dimension_roller_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/reverser_roller_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/reverser_roller_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/reverser_roller_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/reverser_roller_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/reverse_freefall_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/reverse_freefall_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/reverse_freefall_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/reverse_freefall_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/side_friction_roller_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/side_friction_roller_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/side_friction_roller_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/side_friction_roller_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/stand_up_roller_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/stand_up_roller_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/stand_up_roller_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/stand_up_roller_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/steeplechase.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/steeplechase.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/steeplechase.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/steeplechase.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/suspended_swinging_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/suspended_swinging_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/suspended_swinging_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/suspended_swinging_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/twister_roller_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/twister_roller_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/twister_roller_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/twister_roller_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/vertical_drop_roller_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/vertical_drop_roller_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/vertical_drop_roller_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/vertical_drop_roller_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/virginia_reel.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/virginia_reel.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/virginia_reel.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/virginia_reel.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/wild_mouse.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/wild_mouse.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/wild_mouse.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/wild_mouse.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/wooden_roller_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/wooden_roller_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/wooden_roller_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/wooden_roller_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/wooden_wild_mouse.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/wooden_wild_mouse.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/wooden_wild_mouse.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/coaster/wooden_wild_mouse.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/car_ride.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/car_ride.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/car_ride.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/car_ride.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/circus_show.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/circus_show.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/circus_show.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/circus_show.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/crooked_house.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/crooked_house.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/crooked_house.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/crooked_house.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/dodgems.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/dodgems.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/dodgems.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/dodgems.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/ferris_wheel.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/ferris_wheel.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/ferris_wheel.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/ferris_wheel.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/flying_saucers.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/flying_saucers.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/flying_saucers.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/flying_saucers.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/ghost_train.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/ghost_train.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/ghost_train.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/ghost_train.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/haunted_house.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/haunted_house.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/haunted_house.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/haunted_house.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/maze.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/maze.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/maze.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/maze.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/merry_go_round.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/merry_go_round.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/merry_go_round.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/merry_go_round.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/mini_golf.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/mini_golf.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/mini_golf.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/mini_golf.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/mini_helicopters.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/mini_helicopters.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/mini_helicopters.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/mini_helicopters.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/monorail_cycles.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/monorail_cycles.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/monorail_cycles.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/monorail_cycles.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/observation_tower.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/observation_tower.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/observation_tower.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/observation_tower.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/space_rings.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/space_rings.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/space_rings.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/space_rings.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/spiral_slide.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/spiral_slide.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/spiral_slide.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/gentle/spiral_slide.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/ride.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/ride.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/ride.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/ride.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/ride_data.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/ride_data.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/ride_data.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/ride_data.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/ride_ratings.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/ride_ratings.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/ride_ratings.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/ride_ratings.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/shops/facility.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/shops/facility.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/shops/facility.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/shops/facility.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/shops/shop.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/shops/shop.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/shops/shop.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/shops/shop.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/station.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/station.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/station.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/station.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/3d_cinema.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/3d_cinema.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/3d_cinema.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/3d_cinema.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/enterprise.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/enterprise.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/enterprise.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/enterprise.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/go_karts.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/go_karts.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/go_karts.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/go_karts.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/launched_freefall.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/launched_freefall.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/launched_freefall.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/launched_freefall.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/magic_carpet.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/magic_carpet.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/magic_carpet.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/magic_carpet.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/motion_simulator.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/motion_simulator.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/motion_simulator.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/motion_simulator.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/pirate_ship.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/pirate_ship.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/pirate_ship.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/pirate_ship.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/roto_drop.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/roto_drop.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/roto_drop.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/roto_drop.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/swinging_inverter_ship.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/swinging_inverter_ship.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/swinging_inverter_ship.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/swinging_inverter_ship.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/top_spin.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/top_spin.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/top_spin.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/top_spin.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/twist.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/twist.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/twist.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/thrill/twist.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/TrackDesignRepository.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/TrackDesignRepository.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/TrackDesignRepository.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/TrackDesignRepository.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_data.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_data.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_data.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_data.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_data_old.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_data_old.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_data_old.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_data_old.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_design.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_design.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_design.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_design.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_design_save.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_design_save.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_design_save.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_design_save.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_paint.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_paint.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_paint.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/track_paint.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/chairlift.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/chairlift.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/chairlift.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/chairlift.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/lift.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/lift.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/lift.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/lift.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/miniature_railway.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/miniature_railway.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/miniature_railway.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/miniature_railway.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/monorail.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/monorail.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/monorail.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/monorail.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/suspended_monorail.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/suspended_monorail.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/suspended_monorail.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/transport/suspended_monorail.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/vehicle.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/vehicle.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/vehicle.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/vehicle.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/vehicle_data.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/vehicle_data.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/vehicle_data.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/vehicle_data.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/vehicle_paint.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/vehicle_paint.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/vehicle_paint.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/vehicle_paint.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/boat_ride.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/boat_ride.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/boat_ride.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/boat_ride.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/dingy_slide.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/dingy_slide.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/dingy_slide.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/dingy_slide.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/log_flume.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/log_flume.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/log_flume.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/log_flume.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/river_rapids.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/river_rapids.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/river_rapids.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/river_rapids.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/splash_boats.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/splash_boats.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/splash_boats.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/splash_boats.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/submarine_ride.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/submarine_ride.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/submarine_ride.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/submarine_ride.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/water_coaster.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/water_coaster.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/water_coaster.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ride/water/water_coaster.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/scenario/scenario.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/scenario/scenario.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/scenario/scenario.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/scenario/scenario.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/scenario/ScenarioRepository.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/scenario/ScenarioRepository.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/scenario/ScenarioRepository.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/scenario/ScenarioRepository.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/scenario/ScenarioSources.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/scenario/ScenarioSources.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/scenario/ScenarioSources.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/scenario/ScenarioSources.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleScreen.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleScreen.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleScreen.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleScreen.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleSequence.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleSequence.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleSequence.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleSequence.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleSequenceManager.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleSequenceManager.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleSequenceManager.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleSequenceManager.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleSequencePlayer.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleSequencePlayer.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleSequencePlayer.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/title/TitleSequencePlayer.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ui/DummyUiContext.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ui/DummyUiContext.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ui/DummyUiContext.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/ui/DummyUiContext.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/util/sawyercoding.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/util/sawyercoding.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/util/sawyercoding.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/util/sawyercoding.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/util/util.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/util/util.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/util/util.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/util/util.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/Version.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/Version.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/Version.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/Version.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/about.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/about.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/about.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/about.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/banner.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/banner.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/banner.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/banner.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/changelog.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/changelog.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/changelog.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/changelog.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/cheats.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/cheats.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/cheats.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/cheats.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/clear_scenery.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/clear_scenery.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/clear_scenery.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/clear_scenery.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/custom_currency.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/custom_currency.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/custom_currency.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/custom_currency.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/debug_paint.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/debug_paint.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/debug_paint.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/debug_paint.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/demolish_ride_prompt.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/demolish_ride_prompt.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/demolish_ride_prompt.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/demolish_ride_prompt.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/dropdown.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/dropdown.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/dropdown.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/dropdown.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_bottom_toolbar.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_bottom_toolbar.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_bottom_toolbar.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_bottom_toolbar.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_inventions_list.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_inventions_list.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_inventions_list.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_inventions_list.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_main.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_main.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_main.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_main.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_objective_options.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_objective_options.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_objective_options.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_objective_options.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_object_selection.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_object_selection.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_object_selection.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_object_selection.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_scenario_options.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_scenario_options.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_scenario_options.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/editor_scenario_options.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/error.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/error.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/error.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/error.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/finances.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/finances.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/finances.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/finances.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/footpath.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/footpath.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/footpath.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/footpath.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/game_bottom_toolbar.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/game_bottom_toolbar.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/game_bottom_toolbar.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/game_bottom_toolbar.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/guest.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/guest.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/guest.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/guest.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/guest_list.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/guest_list.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/guest_list.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/guest_list.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/install_track.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/install_track.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/install_track.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/install_track.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/land.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/land.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/land.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/land.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/land_rights.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/land_rights.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/land_rights.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/land_rights.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/loadsave.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/loadsave.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/loadsave.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/loadsave.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/main.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/main.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/main.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/main.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/map.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/map.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/map.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/map.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/mapgen.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/mapgen.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/mapgen.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/mapgen.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/map_tooltip.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/map_tooltip.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/map_tooltip.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/map_tooltip.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/maze_construction.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/maze_construction.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/maze_construction.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/maze_construction.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/multiplayer.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/multiplayer.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/multiplayer.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/multiplayer.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/music_credits.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/music_credits.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/music_credits.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/music_credits.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/network_status.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/network_status.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/network_status.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/network_status.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/news.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/news.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/news.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/news.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/news_options.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/news_options.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/news_options.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/news_options.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/new_campaign.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/new_campaign.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/new_campaign.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/new_campaign.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/new_ride.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/new_ride.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/new_ride.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/new_ride.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/options.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/options.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/options.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/options.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/park.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/park.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/park.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/park.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/player.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/player.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/player.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/player.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/publisher_credits.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/publisher_credits.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/publisher_credits.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/publisher_credits.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/research.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/research.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/research.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/research.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/ride.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/ride.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/ride.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/ride.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/ride_construction.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/ride_construction.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/ride_construction.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/ride_construction.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/ride_list.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/ride_list.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/ride_list.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/ride_list.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/save_prompt.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/save_prompt.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/save_prompt.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/save_prompt.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/scenery.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/scenery.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/scenery.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/scenery.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/server_list.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/server_list.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/server_list.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/server_list.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/server_start.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/server_start.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/server_start.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/server_start.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/shortcut_keys.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/shortcut_keys.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/shortcut_keys.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/shortcut_keys.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/shortcut_key_change.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/shortcut_key_change.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/shortcut_key_change.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/shortcut_key_change.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/sign.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/sign.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/sign.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/sign.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/staff.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/staff.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/staff.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/staff.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/staff_fire_prompt.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/staff_fire_prompt.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/staff_fire_prompt.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/staff_fire_prompt.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/staff_list.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/staff_list.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/staff_list.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/staff_list.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/text_input.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/text_input.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/text_input.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/text_input.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/themes.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/themes.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/themes.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/themes.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/tile_inspector.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/tile_inspector.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/tile_inspector.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/tile_inspector.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_command_editor.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_command_editor.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_command_editor.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_command_editor.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_editor.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_editor.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_editor.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_editor.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_exit.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_exit.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_exit.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_exit.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_logo.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_logo.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_logo.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_logo.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_menu.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_menu.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_menu.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_menu.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_options.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_options.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_options.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_options.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_scenarioselect.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_scenarioselect.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_scenarioselect.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/title_scenarioselect.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/tooltip.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/tooltip.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/tooltip.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/tooltip.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/top_toolbar.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/top_toolbar.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/top_toolbar.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/top_toolbar.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/track_list.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/track_list.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/track_list.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/track_list.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/track_manage.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/track_manage.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/track_manage.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/track_manage.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/track_place.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/track_place.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/track_place.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/track_place.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/viewport.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/viewport.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/viewport.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/viewport.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/view_clipping.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/view_clipping.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/view_clipping.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/view_clipping.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/water.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/water.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/water.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/windows/water.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Balloon.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Balloon.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Balloon.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Balloon.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/banner.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/banner.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/banner.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/banner.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Climate.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Climate.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Climate.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Climate.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Duck.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Duck.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Duck.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Duck.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/entrance.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/entrance.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/entrance.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/entrance.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/footpath.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/footpath.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/footpath.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/footpath.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Fountain.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Fountain.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Fountain.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/Fountain.cpp.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/map.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/map.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/map.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/map.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/mapgen.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/mapgen.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/mapgen.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/mapgen.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/map_animation.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/map_animation.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/map_animation.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/map_animation.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/map_helpers.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/map_helpers.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/map_helpers.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/map_helpers.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/money_effect.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/money_effect.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/money_effect.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/money_effect.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/park.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/park.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/park.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/park.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/particle.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/particle.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/particle.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/particle.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/scenery.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/scenery.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/scenery.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/scenery.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/sprite.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/sprite.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/sprite.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/sprite.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/tile_inspector.c.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/tile_inspector.c.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/tile_inspector.c.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/tile_inspector.c.ll || echo nf
llvm-dis ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/wall.cpp.o -o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/wall.cpp.ll || mv ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/wall.cpp.o ../build/CMakeFiles/libopenrct2.dir/src/openrct2/world/wall.cpp.ll || echo nf
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

# pushd ..
emcc ../src/bindings.cpp -std=c++11 -o ../build/bindings.ll -S -emit-llvm -stdlib=libc++
# popd

    # ../build/patches.ll \

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
    -o openrct2.js \
    -s USE_SDL=2 -s DISABLE_EXCEPTION_CATCHING=0 -s ALLOW_MEMORY_GROWTH=1 \
    --js-transform "sed -i -e 's/_dlopen(filename, flag) {/_dlopen(filename, flag) {return 0;/g' -e 's/function _Blit1to4(/function _Blit1to4x(/g' -e 's/__ZN8OpenRCT27Context11RunGameLoopEv(\$0) {/__ZN8OpenRCT27Context11RunGameLoopEv(\$0) {window.dispatchEvent(new Event(\"resize\"));setInterval(function(){__ZN8OpenRCT27Context13RunFixedFrameEv(\$0)},16);throw 42;/g'" \
    --memory-init-file 1 \
    -O1

    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkAction.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkConnection.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkGroup.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkKey.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkPacket.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkPlayer.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkServerAdvertiser.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/NetworkUser.cpp.ll \
    # ../build/CMakeFiles/libopenrct2.dir/src/openrct2/network/ServerList.cpp.ll \
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

#     ./CMakeFiles/libopenrct2.dir/src/openrct2/network/TcpSocket.cpp.ll \

# -s DEMANGLE_SUPPORT=1


