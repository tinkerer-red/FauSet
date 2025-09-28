
#macro __FS_ARG_INIT	static ___arr = [];\
	var __arr = ___arr;
	
#macro __FS_ARG_SET var __arr_length = array_length(__arr);\
	var __count = argument_count - __arr_length;\
	if (__count) {\
		var __i=__arr_length-1;\
		repeat(__count) {\
			array_push(__arr, argument[__i]);\
		__i++}\
	}

#macro __FS_ARG_RESET array_resize(__arr, 0);

enum __FS_DESTRUCTOR {
	TTL = 0,
	REF = 1,
}