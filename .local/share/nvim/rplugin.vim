" perl plugins


" node plugins


" python3 plugins
call remote#host#RegisterPlugin('python3', '/root/.local/share/lunarvim/site/pack/packer/opt/vim-ultest/rplugin/python3/ultest', [
      \ {'sync': v:true, 'name': '_ultest_clear_results', 'type': 'function', 'opts': {}},
      \ {'sync': 'urgent', 'name': '_ultest_external_result', 'type': 'function', 'opts': {}},
      \ {'sync': 'urgent', 'name': '_ultest_external_start', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': '_ultest_get_attach_script', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': '_ultest_get_nearest_test', 'type': 'function', 'opts': {}},
      \ {'sync': 'urgent', 'name': '_ultest_run_last', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': '_ultest_run_nearest', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': '_ultest_run_single', 'type': 'function', 'opts': {}},
      \ {'sync': v:true, 'name': '_ultest_safe_split', 'type': 'function', 'opts': {}},
      \ {'sync': 'urgent', 'name': '_ultest_stop_test', 'type': 'function', 'opts': {}},
      \ {'sync': 'urgent', 'name': '_ultest_update_positions', 'type': 'function', 'opts': {}},
     \ ])


" ruby plugins


" python plugins


