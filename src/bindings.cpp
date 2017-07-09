#include <emscripten.h>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <SDL.h>

extern "C"
{
    void curl_global_cleanup()
    {
    }

    #define SpeexResamplerState void
    SpeexResamplerState *speex_resampler_init(uint32_t nb_channels, 
                                          uint32_t in_rate, 
                                          uint32_t out_rate, 
                                          int quality,
                                          int *err)
    {
        return (void*)42;
    }

    int speex_resampler_set_rate(SpeexResamplerState *st, 
                                uint32_t in_rate, 
                                uint32_t out_rate)
    {
        return 0;
    }

    int speex_resampler_process_interleaved_int(SpeexResamplerState *st, 
                                                const int16_t *in, 
                                                uint32_t *in_len, 
                                                int16_t *out, 
                                                uint32_t *out_len)
    {
        return 0;
    }

    void speex_resampler_destroy(SpeexResamplerState *st)
    {
        
    }

    // PATCH 1
    void _ZN8OpenRCT27Context11RunGameLoopEvX(void* self)
    {
        EM_ASM_INT({
            var self = $0;
            window.dispatchEvent(new Event("resize"));
            setInterval(function()
            {
                //Module["__ZN8OpenRCT27Context16RunVariableFrameEv"](self);
                Module["__ZN8OpenRCT27Context13RunFixedFrameEv"](self);
            },16);
            throw 42;
        }, self);
    }

    // PATCH 2
    struct SDL_Cursor
    {
        struct SDL_Cursor *next;
        void *driverdata;
    };

    typedef struct _Emscripten_CursorData
    {
        const char *system_cursor;
        SDL_bool is_custom;
    } Emscripten_CursorData;

    SDL_Cursor*
    Emscripten_CreateCursorFromString(const char* cursor_str, SDL_bool is_custom)
    {
        SDL_Cursor* cursor;
        Emscripten_CursorData *curdata;

        cursor = (SDL_Cursor*)SDL_calloc(1, sizeof(SDL_Cursor));
        if (cursor) {
            curdata = (Emscripten_CursorData *) SDL_calloc(1, sizeof(*curdata));
            if (!curdata) {
                SDL_OutOfMemory();
                SDL_free(cursor);
                return NULL;
            }

            curdata->system_cursor = cursor_str;
            curdata->is_custom = is_custom;
            cursor->driverdata = curdata;
        }
        else {
            SDL_OutOfMemory();
        }

        return cursor;
    }

    SDL_Cursor*
    Emscripten_CreateCursor(SDL_Surface* surface, int hot_x, int hot_y)
    {
        const char *cursor_url = NULL;
        SDL_Surface *conv_surf;

        conv_surf = SDL_ConvertSurfaceFormat(surface, SDL_PIXELFORMAT_ABGR8888, 0);

        if (!conv_surf) {
            return NULL;
        }

        cursor_url = (const char *)EM_ASM_INT({
            var w = $0;
            var h = $1;
            var hot_x = $2;
            var hot_y = $3;
            var pixels = $4;

            var canvas = document.createElement("canvas");
            canvas.width = w;
            canvas.height = h;

            var ctx = canvas.getContext("2d");

            var image = ctx.createImageData(w, h);
            var data = image.data;
            var src = pixels >> 2;
            var dst = 0;
            var num;
            if (typeof CanvasPixelArray !== 'undefined' && data instanceof CanvasPixelArray) {
                // IE10/IE11: ImageData objects are backed by the deprecated CanvasPixelArray,
                // not UInt8ClampedArray. These don't have buffers, so we need to revert
                // to copying a byte at a time. We do the undefined check because modern
                // browsers do not define CanvasPixelArray anymore.
                num = data.length;
                while (dst < num) {
                    var val = HEAP32[src]; // This is optimized. Instead, we could do {{{ makeGetValue('buffer', 'dst', 'i32') }}};
                    data[dst  ] = val & 0xff;
                    data[dst+1] = (val >> 8) & 0xff;
                    data[dst+2] = (val >> 16) & 0xff;
                    data[dst+3] = (val >> 24) & 0xff;
                    src++;
                    dst += 4;
                }
            } else {
                var data32 = new Int32Array(data.buffer);
                num = data32.length;
                data32.set(HEAP32.subarray(src, src + num));
            }

            ctx.putImageData(image, 0, 0);
            var url = "url(" + canvas.toDataURL() + ") " + hot_x + " " + hot_y + ", auto";

            var urlBuf = _malloc(url.length + 1);
            stringToUTF8(url, urlBuf, url.length + 1);

            return urlBuf;
        }, surface->w, surface->h, hot_x, hot_y, conv_surf->pixels);

        SDL_FreeSurface(conv_surf);

        return Emscripten_CreateCursorFromString(cursor_url, SDL_TRUE);
    }
}