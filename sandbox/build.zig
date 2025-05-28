const std = @import("std");
pub fn build(b: *std.Build) void {
    const exe = b.addExecutable(.{ .name = "sandbox", .root_source_file = b.path("main.zig") , .target = b.graph.host});
    const run_exe = b.addRunArtifact(exe);
    const run_step = b.step("run", "Run application");
    const cairo = b.dependency("zigcairo", .{}).module("cairo");
    cairo.linkSystemLibrary("cairo", .{});
    exe.linkLibC();
    exe.root_module.addImport("cairo", cairo);
    b.installArtifact(exe);
    run_step.dependOn(&run_exe.step);
}
