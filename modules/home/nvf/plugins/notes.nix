{
  programs.nvf.settings.vim = {
    notes = {
      todo-comments.enable = true;
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader><t";
        action = "function() require('todo-comments').jump_prev() end";
        desc = "Previous Todo Comment";
      }
      {
        mode = "n";
        key = "<leader>>t";
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
    ];
  };
}
