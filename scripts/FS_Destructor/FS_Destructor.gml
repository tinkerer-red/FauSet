

function FS_Destructor(_initialValue, _destroyMethod) {
    //statics
	static __gc = {
		grid : ds_grid_create(2, 0),
		used_rows : 0,
		time_source : undefined,
	};
	
	//init
	if (__gc.time_source == undefined) {
		__gc.time_source = time_source_create(time_source_global, FS_Step_Rate, time_source_units_frames,
			function() {
				static __gc = FS_Destructor.__gc;
				var _grid = __gc.grid;
				var _used_rows = __gc.used_rows;
				var _used_rows_start = _used_rows;
				var _tru_rows = ds_grid_height(_grid);
				
				// TODO: improve this so we only decrement the TTL of the actual objects and not the null spacing
				// Only decrement TTL in the logical range [0 .. _used_rows-1]
				if (_used_rows > 0) {
					ds_grid_add_region(_grid, __FS_DESTRUCTOR.TTL, 0, __FS_DESTRUCTOR.TTL, _used_rows - 1, -1);
				}
				
				// sort all objects by TTL ascending (expired float to the top half)
				ds_grid_sort(_grid, __FS_DESTRUCTOR.TTL, true);
				
				// Sweep top for expired items (TTL <= 0)
				var _i = 0;
				repeat (_used_rows) {
					if (_grid[# __FS_DESTRUCTOR.TTL, _i]) {
						break;
					}
					else {
						var _ref = _grid[# __FS_DESTRUCTOR.REF, _i];
						if (weak_ref_alive(_ref)) {
							_grid[# __FS_DESTRUCTOR.TTL, _i] = FS_Collection_Rate;
						} else {
							_ref.destroy(_ref.value);
							_grid[# __FS_DESTRUCTOR.TTL, _i] = infinity; // large positive sentinel
							_grid[# __FS_DESTRUCTOR.REF, _i] = undefined;
							_used_rows--
						}
					}
					_i++;
				}
				
				if (_used_rows < _used_rows_start) {
					// Optional hysteresis shrink of capacity to avoid ping-pong:
					// If logical size is much smaller than capacity, shrink capacity by half, but never below a floor.
					// Keep this inline and cheap.
					var _min_tru_rows = 64;
					if (_tru_rows > _min_tru_rows) {
						if (_used_rows <= (_tru_rows >> 2)) {
							var _new_tru_rows = (_tru_rows >> 1);
							if (_new_tru_rows < _min_tru_rows) _new_tru_rows = _min_tru_rows;
							if (_new_tru_rows < _tru_rows && _new_tru_rows >= _used_rows) {
								ds_grid_sort(_grid, __FS_DESTRUCTOR.TTL, true);
								ds_grid_resize(_grid, 2, _new_tru_rows);
								_tru_rows = _new_tru_rows;
							}
						}
					}
				}
				
				__gc.used_rows = _used_rows;
				
	        }, [], -1);
		time_source_start(__gc.time_source);
	}
	
	var _obj = {}
	with (_obj) {
		value = _initialValue;
	    with(weak_ref_create(_obj))
	    {
	        value = _initialValue;
	        destroy = _destroyMethod;
			
			var _grid = __gc.grid;
            var _used_rows = __gc.used_rows;
            var _tru_rows = ds_grid_height(_grid);
			
			// If we are at capacity, grow geometrically (x2) and initialize slack rows.
			if (_used_rows >= _tru_rows) {
				var _new_tru_rows = (_tru_rows < 4) ? 4 : (_tru_rows << 1);
				ds_grid_resize(_grid, 2, _new_tru_rows);
				
				// Initialize newly added rows to sentinel values so they never get decremented or processed.
				var _y = _tru_rows;
				var _limit = _new_tru_rows - 1;
				while (_y <= _limit) {
					_grid[# __FS_DESTRUCTOR.TTL, _y] = infinity; // large positive sentinel
					_grid[# __FS_DESTRUCTOR.REF, _y] = undefined;
					_y += 1;
				}
				_tru_rows = _new_tru_rows;
			}
			
			_grid[# __FS_DESTRUCTOR.TTL, _used_rows] = irandom(FS_Collection_Rate);
            _grid[# __FS_DESTRUCTOR.REF, _used_rows] = self;

            // Advance logical size without touching capacity.
            __gc.used_rows = _used_rows + 1;
	    }
	}
	return _obj;
}


//use case example
//function fs_grid_create(_w,_h) {
//	var _obj = new FS_Destructor();
//	_obj.value = ds_grid_create(_w,_h);
//	
//	_obj.FS_GC_register(_obj.grid, function(value) {
//		ds_grid_destroy(value);
//		
//	});
//	
//	return _obj;
//}

