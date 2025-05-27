const Dither = @import("enums.zig").Dither;

pub const Pattern = opaque {
    extern fn cairo_pattern_set_dither(pattern: *Pattern, dither: Dither) void;
    pub fn setDither(self: *Pattern, dither: Dither) void {
        cairo_pattern_set_dither(self, dither);
    }

    extern fn cairo_pattern_get_dither(pattern: *Pattern) Dither;
    pub fn getDither(self: *Pattern) Dither {
        return cairo_pattern_get_dither(self);
    }

    extern fn cairo_pattern_create_linear(x0: f64, y0: f64, x1: f64, y1: f64) ?*Pattern;
    pub const CreateLinear = cairo_pattern_create_linear;

    extern fn cairo_pattern_add_color_stop_rgb(pattern: *Pattern, offset: f64, red: f64, green: f64, blue: f64) void;
    pub fn AddColorStopRgb(self: *Pattern, offset: f64, red: f64, green: f64, blue: f64) void {
        cairo_pattern_add_color_stop_rgb(self, offset, red, green, blue);
    }

    extern fn cairo_pattern_destroy(pattern: *Pattern) void;
    pub fn Destroy(self: *Pattern) void {
        cairo_pattern_destroy(self);
    }
};

