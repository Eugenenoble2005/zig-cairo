const std = @import("std");
const cairo = @import("cairo");
pub fn main() !void {
    const surface = cairo.Surface.CreateImage(.Argb32, 100, 100) orelse return error.Failed;
    const cr = cairo.Create(surface) orelse return error.Failed;
    defer cr.Destroy();

    cr.SetRgbSource(1.0, 1.0, 1.0); //white background
    cr.Paint();

    cr.SetRgbSource(0.0, 1, 0.0); //red
    cr.DrawRectangle(50, 50, 50, 50);
    cr.Fill();

    const toImg = surface.WriteToPng("output2.png");
    if (toImg == .Success) {
        std.debug.print("Succesfully written to image file", .{});
    }
}
