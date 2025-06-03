const Format = @import("enums.zig").Format;
const Status = @import("enums.zig").Status;

pub const Surface = opaque {
    extern fn cairo_image_surface_create(format: Format, width: c_int, height: c_int) callconv(.C) ?*Surface;
    pub const CreateImage = cairo_image_surface_create;

    extern fn cairo_surface_write_to_png(surface: *Surface, file: [*:0]const u8) Status;
    pub const writeToPng = cairo_surface_write_to_png;

    extern fn cairo_image_surface_create_from_png(filename: [*:0]const u8) *Surface;
    pub const CreateImageFromPng = cairo_image_surface_create_from_png;

    extern fn cairo_surface_status(surface: *Surface) Status;
    pub const GetStatus = cairo_surface_status;

    extern fn cairo_image_surface_get_width(surface: *Surface) c_int;
    pub const GetWidth = cairo_image_surface_get_width;

    extern fn cairo_image_surface_get_height(surface: *Surface) c_int;
    pub const GetHeight = cairo_image_surface_get_height;

    extern fn cairo_image_surface_get_stride(surface: *Surface) c_int;
    pub const GetStride = cairo_image_surface_get_stride;

    extern fn cairo_image_surface_create_for_data(data: [*:0]u8, format: Format, width: c_int, height: c_int, stride: c_int) ?*Surface;
    pub const CreateFromData = cairo_image_surface_create_for_data;

    
};
