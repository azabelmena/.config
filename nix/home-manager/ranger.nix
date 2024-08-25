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
    relative_current_zero = true;
    auto_update_comulative_size = true;
    cd_tab_Case = "insensitive";

    use_preview_script = true;
    preview_script = "${pkgs.ranger}/share/doc/ranger/config/scope.sh";
    preview_images_method = "kitty";
    open_all_images = true;

    preview_files = true;
    preview_directories = true;
    collapse_preview = true;
    preview_max_size = 100000;

    save_console_history = true;

    bidi_support = true;

    draw_borders = "both";
    draw_progress_bar_in_status_bar = true;

    shorten_title = true;
    display_size_in_status_bar = true;
    display_size_in_column = false;
    display_disk_space_in_status_bar = true;
    tilde_in_title_bar = true;

    update_tmux_title = true;

    mouse_enabled = true;

    max_history_size = 200;
    max_console_history_size = 500;

    sort_reverse = false;
    sort_unicode = false;
    sort_case_insensitive = true;
    sort_directories_first = true;

    idle_delay = 100;
  };

  mappings = {
    rr = "rename_append";
    yy = "copy";
    xx = "cut";
    pp = "paste";
    dd = "console delete";
    nf = "shell vi";

    J = "move down=0.5 pages=True";
    K = "move up=0.5 pages=True";
  };
}
