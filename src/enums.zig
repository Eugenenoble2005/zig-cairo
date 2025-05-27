pub const Format = enum(c_int) { Invalid = -1, Argb32 = 0, Rgb24 = 1, A8 = 2, A1 = 3, Rgb16_565 = 4, Rgb30 = 5, Rgb96f = 6, Rgba128f = 7 };

pub const Status = enum(c_int) { Success = 0, No_memory, Invalid_restore, Invalid_pop_group, No_current_point, Invalid_matrix, Invalid_status, Null_pointer, Invalid_string, Invalid_path_data, Read_error, Write_error, Surface_finished, Surface_type_mismatch, Pattern_type_mismatch, Invalid_content, Invalid_format, Invalid_visual, File_not_found, Invalid_dash, Invalid_dsc_comment, Invalid_index, Clip_not_representable, Temp_file_error, Invalid_stride, Font_type_mismatch, User_font_immutable, User_font_error, Negative_count, Invalid_clusters, Invalid_slant, Invalid_weight, Invalid_size, User_font_not_implemented, Device_type_mismatch, Device_error, Invalid_mesh_construction, Device_finished, Jbig2_global_missing, Png_error, Freetype_error, Win32_gdi_error, Tag_error, Dwrite_error, Svg_font_error, Last_status };

pub const Content = enum(c_int) { Color = 0x1000, Alpha = 0x2000, ColorAlpha = 0x3000 };

pub const Dither = enum(c_int) { NONE, DEFAULT, FAST, GOOD, BEST };

pub const Operator = enum(c_int) { Clear, Source, Over, In, Out, Atop, Dest, Dest_over, Dest_in, Dest_out, Dest_atop, Xor, Add, Saturate, Multiply, Screen, Overlay, Darken, Lighten, Color_dodge, Color_burn, Hard_light, Soft_light, Difference, Exclusion, Hsl_hue, Hsl_saturation, Hsl_color, Hsl_luminosity };

pub const Antialias = enum(c_int) { Default, None, Gray, Subpixel, Fast, Good, Best };

pub const FillRule = enum(c_int) { Winding, EvenOdd };

pub const LineCap = enum(c_int) { Butt, Round, Square };

pub const LineJoin = enum(c_int) { Miter, Round, Bevel };

pub const TextClusterFlags = enum(c_int) { Backward = 0x00000001 };

pub const FontSlant = enum(c_int) { Normal, Italic, Oblique };

pub const FontWeight = enum(c_int) { Normal, Bold };

pub const SubpixelOrder = enum(c_int) { Default, Rgb, Bgr, Vrgb, Vbgr };

pub const HintStyle = enum(c_int) { Default, None, Slight, Medium, Full };

pub const HintMetrics = enum(c_int) { Default, Off, On };

pub const ColorMode = enum(c_int) { Default, NoColor, Color };

pub const FontType = enum(c_int) { Toy, Ft, Win32, Quartz, User, Dwrite };

pub const PathDataType = enum(c_int) { Toy, Ft, Win32, Quartz, User, Dwrite };

pub const DeviceType = enum(c_int) { Drm, Gl, Script, Xcb, Xlib, Xml, Cogl, Win32, Invalid = -1 };

pub const SurfaceObserverMode = enum(c_int) { Normal = 0, Record_operations = 0x1 };

pub const SurfaceType = enum(c_int) { Image, Pdf, Ps, Xlib, Xcb, Glitz, Quartz, Win32, Beos, Directfb, Svg, Os2, Win32_printing, Quartz_image, Script, Qt, Recording, Vg, Gl, Drm, Tee, Xml, Skia, Subsurface, Cogl };

pub const PatternType = enum(c_int) { Solid, Surface, Linear, Radial, Mesh, Raster_source };

pub const Extend = enum(c_int) { None, Repeat, Reflect, Pad };

pub const Filter = enum(c_int) { Fast, Good, Best, Nearest, Bilinear, Gaussian };

pub const RegionOverlap = enum(c_int) { In, Out, Part };
