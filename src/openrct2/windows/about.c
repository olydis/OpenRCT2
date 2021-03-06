#pragma region Copyright (c) 2014-2017 OpenRCT2 Developers
/*****************************************************************************
 * OpenRCT2, an open source clone of Roller Coaster Tycoon 2.
 *
 * OpenRCT2 is the work of many authors, a full list can be found in contributors.md
 * For more information, visit https://github.com/OpenRCT2/OpenRCT2
 *
 * OpenRCT2 is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * A full copy of the GNU General Public License can be found in licence.txt
 *****************************************************************************/
#pragma endregion

#include "../localisation/localisation.h"
#include "../sprites.h"
#include "../interface/widget.h"
#include "../interface/window.h"

enum WINDOW_ABOUT_WIDGET_IDX {
	WIDX_BACKGROUND,
	WIDX_TITLE,
	WIDX_CLOSE,
	WIDX_MUSIC_CREDITS,
	WIDX_PUBLISHER_CREDITS
};

rct_widget window_about_widgets[] = {
	{ WWT_FRAME,			0,	0,			399,	0,		329,	0xFFFFFFFF,								STR_NONE },				// panel / background
	{ WWT_CAPTION,			0,	1,			398,	1,		14,		STR_ROLLERCOASTER_TYCOON_2,				STR_WINDOW_TITLE_TIP },	// title bar
	{ WWT_CLOSEBOX,			0,	387,		397,	2,		13,		STR_CLOSE_X,							STR_CLOSE_WINDOW_TIP },	// close x button
	{ WWT_DROPDOWN_BUTTON,	1,	100,		299,	230,	241,	STR_MUSIC_ACKNOWLEDGEMENTS_ELLIPSIS,	STR_NONE },				// music credits button
	{ WWT_DROPDOWN_BUTTON,	1,	157,		356,	307,	318,	STR_INFOGRAMES_INTERACTIVE_CREDITS,		STR_NONE },				// infogrames credits button
	{ WIDGETS_END },
};

static void window_about_mouseup(rct_window *w, rct_widgetindex widgetIndex);
static void window_about_paint(rct_window *w, rct_drawpixelinfo *dpi);

static rct_window_event_list window_about_events = {
	NULL,
	window_about_mouseup,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	window_about_paint,
	NULL
};

/**
 *
 *  rct2: 0x0066D2AC
 */
void window_about_open()
{
	rct_window* window;

	// Check if window is already open
	window = window_bring_to_front_by_class(WC_ABOUT);
	if (window != NULL)
		return;

	window = window_create_centred(
		400,
		330,
		&window_about_events,
		WC_ABOUT,
		0
	);
	window->widgets = window_about_widgets;
	window->enabled_widgets = (1 << WIDX_CLOSE) | (1 << WIDX_MUSIC_CREDITS) | (1 << WIDX_PUBLISHER_CREDITS);

	window_init_scroll_widgets(window);
	window->colours[0] = COLOUR_LIGHT_BLUE;
	window->colours[1] = COLOUR_LIGHT_BLUE;
	window->colours[2] = COLOUR_LIGHT_BLUE;
}

/**
 *
 *  rct2: 0x0066D4D5
 */
static void window_about_mouseup(rct_window *w, rct_widgetindex widgetIndex)
{
	switch (widgetIndex) {
	case WIDX_CLOSE:
		window_close(w);
		break;
	case WIDX_MUSIC_CREDITS:
		window_music_credits_open();
		break;
	case WIDX_PUBLISHER_CREDITS:
		window_publisher_credits_open();
		break;
	}
}

/**
 *
 *  rct2: 0x0066D321
 */
static void window_about_paint(rct_window *w, rct_drawpixelinfo *dpi)
{
	sint32 x, y;

	window_draw_widgets(w, dpi);

	x = w->x + 200;
	y = w->y + 17;

	// Version
	gfx_draw_string_centred(dpi, STR_VERSION_X, x, y, COLOUR_BLACK, NULL);

	// Credits
	y += 10;
	gfx_draw_string_centred(dpi, STR_COPYRIGHT_CS, x, y, COLOUR_BLACK, NULL);
	y += 79;
	gfx_draw_string_centred(dpi, STR_DESIGNED_AND_PROGRAMMED_BY_CS, x, y, COLOUR_BLACK, NULL);
	y += 10;
	gfx_draw_string_centred(dpi, STR_GRAPHICS_BY_SF, x, y, COLOUR_BLACK, NULL);
	y += 10;
	gfx_draw_string_centred(dpi, STR_SOUND_AND_MUSIC_BY_AB, x, y, COLOUR_BLACK, NULL);
	y += 10;
	gfx_draw_string_centred(dpi, STR_ADDITIONAL_SOUNDS_RECORDED_BY_DE, x, y, COLOUR_BLACK, NULL);
	y += 13;
	gfx_draw_string_centred(dpi, STR_REPRESENTATION_BY_JL, x, y, COLOUR_BLACK, NULL);
	y += 25;
	gfx_draw_string_centred(dpi, STR_THANKS_TO, x, y, COLOUR_BLACK, NULL);
	y += 10;
	gfx_draw_string_centred(dpi, STR_THANKS_TO_PEOPLE, x, y, COLOUR_BLACK, NULL);
	y += 10;
	gfx_draw_string_centred(dpi, STR_CREDIT_SPARE_1, x, y, COLOUR_BLACK, NULL);
	y += 10;
	gfx_draw_string_centred(dpi, STR_CREDIT_SPARE_2, x, y, COLOUR_BLACK, NULL);
	y += 10;
	gfx_draw_string_centred(dpi, STR_CREDIT_SPARE_3, x, y, COLOUR_BLACK, NULL);
	y += 10;
	gfx_draw_string_centred(dpi, STR_CREDIT_SPARE_4, x, y, COLOUR_BLACK, NULL);
	y += 10;
	gfx_draw_string_centred(dpi, STR_CREDIT_SPARE_5, x, y, COLOUR_BLACK, NULL);
	y += 10;
	gfx_draw_string_centred(dpi, STR_CREDIT_SPARE_6, x, y, COLOUR_BLACK, NULL);
	y += 10;
	gfx_draw_string_centred(dpi, STR_CREDIT_SPARE_7, x, y, COLOUR_BLACK, NULL);

	// Images
	gfx_draw_sprite(dpi, SPR_CREDITS_CHRIS_SAWYER_SMALL, w->x + 92, w->y + 40, 0);
	gfx_draw_sprite(dpi, SPR_CREDITS_INFOGRAMES, w->x + 50, w->y + 247, 0);

	// Licence
	gfx_draw_string_left(dpi, STR_LICENSED_TO_INFOGRAMES_INTERACTIVE_INC, NULL, COLOUR_BLACK, w->x + 157, w->y + 257);
}
