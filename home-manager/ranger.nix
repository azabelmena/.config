{ pkgs, ... }:
{
  enable = true;

  settings = {
    viewmode = "miller";
    column_ratios = "1,1";
    confirm_on_delete = "always";
    scroll_offset = 8;
    unicode_ellipsis = true;
    show_hidden = true;
    line_numbers="relative";

    use_preview_script = true;
    preview_script = "${pkgs.ranger}/share/doc/ranger/config/scope.sh";
    preview_images_method = "kitty";
    open_all_imager = true;

    bidi_support = true;

    draw_borders = "both";
    draw_progress_bar_in_status_bar = true;

    mouse_enabled = true;
  };

  mappings = {
    rr = "rename_append";
    yy = "copy";
    xx = "cut";
    pp = "paste";
    dd = "console delete";
    nf = "shell vi";
  };
}
