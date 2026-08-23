{lib, ...}: {
  programs.nvf.settings.vim = {
    notes = {
      todo-comments = {
        enable = true;
        mappings = {
          quickFix = null;
          trouble = null;
        };
      };
      obsidian = {
        enable = false;
        setupOpts = {
          workspaces = [
            {
              name = "database";
              path = "~/database/";
            }
          ];
          note = {
            template = "default.md";
          };
          attachments = {
            folder = "999\ Core/Attachments";
          };
          templates = {
            folder = "999\ Core/Templates";
            date_format = "YYYY-MM-DD";
            time_format = "HH:MM";
          };
          daily_notes = {
            enabled = true;
            folder = "001\ Daily";
            date_format = "YYYY-MM-DD";
            default_tags = ["daily"];
            template = "daily-note.md";
          };
          frontmatter = {
            enable = false;
          };
          checkbox = {
            enabled = true;
            create_new = true;
            order = [
              " "
              "x"
              ">"
              "!"
              "~"
            ];
          };
          file = {
            ignore_filters = [
              ".git/*"
              ".obsidian/*"
            ];
          };
          new_notes_location = "000\ Notes";
          notes_subdir = "000\ Notes";
          note_id_func = lib.mkLuaInline "require('obsidian.builtin').title_id";
          legacy_commands = false;
        };
      };
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>[t";
        action = "function() require('todo-comments').jump_prev() end";
        desc = "Previous Todo Comment";
      }
      {
        mode = "n";
        key = "<leader>]t";
        action = "function() require('todo-comments').jump_next() end";
        desc = "Next Todo Comment";
      }
      {
        mode = "n";
        key = "<leader>xt";
        action = "<cmd>Trouble todo toggle<cr>";
        desc = "Todo";
      }
      {
        mode = "n";
        key = "<leader>xT";
        action = "<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<cr>";
        desc = "Todo/Fix/Fixme";
      }
      {
        mode = "n";
        key = "<leader>st";
        action = "<cmd>TodoFzfLua<cr>";
        desc = "Todo";
      }
      {
        mode = "n";
        key = "<leader>sT";
        action = "<cmd>TodoFzfLua keywords=TODO,FIX,FIXME<cr>";
        desc = "Todo/Fix/Fixme";
      }
      # Obsidian
      # {
      #   mode = "n";
      #   key = "<leader>oc";
      #   action = "<cmd>Obsidian check<cr>";
      #   desc = "Check";
      # }
      # {
      #   mode = "n";
      #   key = "<leader>oh";
      #   action = "<cmd>Obsidian help<cr>";
      #   desc = "Help";
      # }
      # {
      #   mode = "n";
      #   key = "<leader>oH";
      #   action = "<cmd>Obsidian helpgrep<cr>";
      #   desc = "Helpgrep";
      # }
      # {
      #   mode = "n";
      #   key = "<leader>oO";
      #   action = "<cmd>Obsidian open<cr>";
      #   desc = "Open Obsidian Vault";
      # }
      # {
      #   mode = "n";
      #   key = "<leader>od";
      #   action = "<cmd>Obsidian today<cr>";
      #   desc = "Open Daily Note";
      # }
      # {
      #   mode = "n";
      #   key = "<leader>oe";
      #   action = "<cmd>Obsidian new_from_template<cr>";
      #   desc = "New Note";
      # }
      # {
      #   mode = "n";
      #   key = "<leader>on";
      #   action = "<cmd>Obsidian new<cr>";
      #   desc = "New Note";
      # }
      # {
      #   mode = "n";
      #   key = "<leader>oo";
      #   action = "<cmd>Obsidian quick_switch<cr>";
      #   desc = "Open Quick Switch";
      # }
      # {
      #   mode = "n";
      #   key = "<leader>og";
      #   action = "<cmd>Obsidian search<cr>";
      #   desc = "Search Grep";
      # }
      # {
      #   mode = "n";
      #   key = "<leader>ot";
      #   action = "<cmd>Obsidian tags<cr>";
      #   desc = "Search Tags";
      # }
      # {
      #   mode = "n";
      #   key = "<leader>ob";
      #   action = "<cmd>Obsidian backlinks<cr>";
      #   desc = "Backlinks";
      # }
      # {
      #   mode = "n";
      #   key = "<leader>oT";
      #   action = "<cmd>Obsidian toc<cr>";
      #   desc = "Table of Contents";
      # }
      # {
      #   mode = "n";
      #   key = "<leader>oi";
      #   action = "<cmd>Obsidian template<cr>";
      #   desc = "Insert Template";
      # }
      # {
      #   mode = "n";
      #   key = "<leader>op";
      #   action = "<cmd>Obsidian paste_img<cr>";
      #   desc = "Paste Image";
      # }
      # {
      #   mode = "n";
      #   key = "<leader>or";
      #   action = "<cmd>Obsidian rename<cr>";
      #   desc = "Rename Note";
      # }
      # {
      #   mode = "n";
      #   key = "gc";
      #   action = "<cmd>Obsidian toggle_checkbox<cr>";
      #   desc = "Toggle Checkbox";
      # }
      # {
      #   mode = "n";
      #   key = "<leader>ol";
      #   action = "<cmd>Obsidian links<cr>";
      #   desc = "Links";
      # }
      # {
      #   mode = "n";
      #   key = "gl";
      #   action = "<cmd>Obsidian follow_link<cr>";
      #   desc = "Follow Link";
      # }
      # {
      #   mode = "v";
      #   key = "<leader>ol";
      #   action = "<cmd>Obsidian link<cr>";
      #   desc = "Link Text to Note";
      # }
      # {
      #   mode = "v";
      #   key = "<leader>oL";
      #   action = "<cmd>Obsidian link_new<cr>";
      #   desc = "Link Text to new Note";
      # }
    ];
  };
}
