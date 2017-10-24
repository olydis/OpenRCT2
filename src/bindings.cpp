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
                Module["__ZN8OpenRCT27Context16RunVariableFrameEv"](self);
                //Module["__ZN8OpenRCT27Context13RunFixedFrameEv"](self);
            },16);
            throw 42;
        }, self);
    }

}