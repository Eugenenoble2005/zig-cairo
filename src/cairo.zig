//enums
pub const Format = @import("enums.zig").Format;
pub const Status = @import("enums.zig").Status;
pub const Operator = @import("enums.zig").Operator;
pub const Content = @import("enums.zig").Content;
pub const Antialias = @import("enums.zig").Antialias;
pub const FillRule = @import("enums.zig").FillRule;
pub const LineCap = @import("enums.zig").LineCap;
pub const LineJoin = @import("enums.zig").LineJoin;

usingnamespace @import("enums.zig");

pub const Surface = @import("surface.zig").Surface;
pub const Pattern = @import("pattern.zig").Pattern;
pub const Matrix = struct { xx: f64, yx: f64, xy: f64, yy: f64, x0: f64, y0: f64 };
pub const Rectangle = struct { x: c_int, y: c_int, width: c_int, height: c_int };
pub const UserDataKey = struct { unused: c_int };
const Cairo = @This();
const Bool = c_int;

extern fn cairo_create(surface: *Surface) ?*Cairo;
pub const Create = cairo_create;

extern fn cairo_destroy(cairo: *Cairo) void;
pub fn Destroy(self: *Cairo) void {
    cairo_destroy(self);
}

extern fn cairo_get_reference_count(cr: *Cairo) c_uint;
pub fn GetReferenceCount(self: *Cairo) c_uint {
    return cairo_get_reference_count(self);
}

extern fn cairo_save(cr: *Cairo) void;
pub fn Save(self: *Cairo) void {
    cairo_save(self);
}

extern fn cairo_get_user_data(cr: *Cairo, key: *UserDataKey) ?*anyopaque;
pub fn GetUserData(self: *Cairo, key: *UserDataKey) ?*anyopaque {
    return cairo_get_user_data(self, key);
}

extern fn cairo_set_user_data(cr: *Cairo, key: *UserDataKey, user_data: *anyopaque, destroy: cairo_destroy_func) Status;
pub fn SetUserData(self: *Cairo, key: *UserDataKey, user_data: *anyopaque, destroy: cairo_destroy_func) Status {
    return cairo_set_user_data(self, key, user_data, destroy);
}

extern fn cairo_set_operator(cr: *Cairo, op: Operator) void;
pub fn SetOperator(self: *Cairo, op: Operator) void {
    cairo_set_operator(self, op);
}

extern fn cairo_set_source(cr: *Cairo, source: *Pattern) void;
pub fn SetSource(self: *Cairo, source: *Pattern) void {
    cairo_set_source(self, source);
}

extern fn cairo_set_source_rgb(self: *Cairo, red: f64, green: f64, blue: f64) void;
pub const SetRgbSource = cairo_set_source_rgb;

extern fn cairo_set_source_rgba(cr: *Cairo, red: f64, green: f64, blue: f64, alpha: f64) void;
pub fn SetRgbaSource(self: *Cairo, red: f64, green: f64, blue: f64, alpha: f64) void {
    cairo_set_source_rgba(self, red, green, blue, alpha);
}

extern fn cairo_paint(cr: *Cairo) void;
pub fn Paint(self: *Cairo) void {
    cairo_paint(self);
}

extern fn cairo_rectangle(cr: *Cairo, x: f64, y: f64, width: f64, height: f64) void;
pub fn DrawRectangle(self: *Cairo, x: f64, y: f64, width: f64, height: f64) void {
    cairo_rectangle(self, x, y, width, height);
}

extern fn cairo_fill(cr: *Cairo) void;
pub fn Fill(self: *Cairo) void {
    cairo_fill(self);
}

extern fn cairo_push_group(cr: *Cairo) void;
pub fn PushGroup(self: *Cairo) void {
    cairo_push_group(self);
}

extern fn cairo_push_group_with_content(cr: *Cairo, content: Content) void;
pub fn PushGroupWithContent(self: *Cairo, content: Content) void {
    cairo_push_group_with_content(self, content);
}

extern fn cairo_pop_group(cr: *Cairo) void;
pub fn PopGroup(self: *Cairo) void {
    cairo_pop_group(self);
}

extern fn cairo_pop_group_to_source(cr: *Cairo) void;
pub fn PopGroupToSource(self: *Cairo) void {
    cairo_pop_group_to_source(self);
}

extern fn cairo_set_source_surface(cr: *Cairo, surface: *Surface) void;
pub fn SetSourceSurface(self: *Cairo, surface: *Surface) void {
    cairo_set_source_surface(self, surface);
}

extern fn cairo_set_tolerance(cr: *Cairo, tolerance: f64) void;
pub fn SetTolerance(self: *Cairo, tolerance: f64) void {
    cairo_set_tolerance(self, tolerance);
}

extern fn cairo_set_antialias(self: *Cairo, antialias: Antialias) void;
pub const SetAntialias = cairo_set_antialias;

extern fn cairo_set_fill_rule(self: *Cairo, fill_rule: FillRule) void;
pub const SetFillRule = cairo_set_fill_rule;

extern fn cairo_set_line_width(self: *Cairo, width: f64) void;
pub const SetLineWidth = cairo_set_line_width;

extern fn cairo_set_hairline(self: *Cairo, set_hairline: Bool) void;
pub fn SetHairline(self: *Cairo, set_hairline: bool) void {
    cairo_set_hairline(self, if (set_hairline) 1 else 0); //hmm?
}

extern fn cairo_set_line_cap(self: *Cairo, line_cap: LineCap) void;
pub const SetLineCap = cairo_set_line_cap;

extern fn cairo_set_line_join(self: *Cairo, line_join: LineJoin) void;
pub const SetLineJoin = cairo_set_line_join;

extern fn cairo_set_dash(self: *Cairo, dashes: *f64, num_dashes: c_int, offset: f64) void;
pub const SetDash = cairo_set_dash;

extern fn cairo_set_miter_limit(self: *Cairo, limit: f64) void;
pub const SetMiterLimit = cairo_set_miter_limit;

const cairo_destroy_func = ?*const fn (*anyopaque) callconv(.C) void;
