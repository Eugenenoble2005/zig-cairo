const Format = @import("enums.zig").Format;
const Status = @import("enums.zig").Status;

pub const Surface = opaque {
    extern fn cairo_image_surface_create(format: Format, width: c_int, height: c_int) callconv(.C) ?*Surface;
    pub const CreateImage = cairo_image_surface_create;

    extern fn cairo_surface_write_to_png(surface: *Surface, file: [*:0]const u8) Status;
    pub fn WriteToPng(self: *Surface, file: [*:0]const u8) Status {
        return cairo_surface_write_to_png(self, file);
    }

};
