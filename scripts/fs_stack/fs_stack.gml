#region JsDocs
/// @func    fs_stack_create()
/// @desc    This function will create a new stack data-structure and return the index value. This value should be stored in a variable and used in all further function calls relating to the stack.
/// @return  {Id.DsStack}
#endregion
function fs_stack_create() {
	return FS_Destructor(ds_stack_create(), ds_stack_destroy);
}
#region JsDocs
/// @func    fs_stack_destroy()
/// @desc    This function will remove the given stack data-structure from memory, freeing up the resources it was using and removing all values that it contained. This function should always be used when you are finished using the DS stack to prevent memory leaks that can slow down and crash your game.
/// @param   {Id.DsStack} id : The id of the data structure to remove.
/// @return  {Undefined}
#endregion
function fs_stack_destroy(_id) {
	_id = _id.value;
	return ds_stack_destroy(_id)
}
#region JsDocs
/// @func    fs_stack_clear()
/// @desc    With this function you can clear all data from the given stack data-structure. This does NOT destroy the data-structure (for that you should use ds_stack_destroy()) it only wipes all data from it and returns an empty stack.
/// @param   {Id.DsStack} id : The id of the data structure to clear.
/// @return  {Undefined}
#endregion
function fs_stack_clear(_id) {
	_id = _id.value;
	return ds_stack_clear(_id)
}
#region JsDocs
/// @func    fs_stack_copy()
/// @desc    This function can be used to copy the contents of one stack into another. Note that this does NOT remove the contents from the original stack, nor does it destroy the original stack. When using this function the stack being copied to must have been previously created and if it contained any items before the copy, then these will be cleared first (meaning this information will be lost).
/// @param   {Id.DsStack} destination : The id of the NEW stack.
/// @param   {Id.DsStack} source : The ORIGINAL stack to copy to id.
/// @return  {Undefined}
#endregion
function fs_stack_copy(_destination, _source) {
	_destination = _destination.value;
	_source = _source.value;
	return ds_stack_copy(_destination, _source)
}
#region JsDocs
/// @func    fs_stack_size()
/// @desc    This function will return the "size" of the stack, ie: the number of items that have been pushed onto it.
/// @param   {Id.DsStack} id : The id of the data structure to check.
/// @return  {Real}
/// @pure
/// @deprecated
#endregion
function fs_stack_size(_id) {
	_id = _id.value;
	return ds_stack_size(_id)
}
#region JsDocs
/// @func    fs_stack_empty()
/// @desc    With this function you can check the given DS stack to see if it is empty (returns true) or not (returns false).
/// @param   {Id.DsStack} id : The id of the data structure to check.
/// @return  {Bool}
/// @pure
/// @deprecated
#endregion
function fs_stack_empty(_id) {
	_id = _id.value;
	return ds_stack_empty(_id)
}
#region JsDocs
/// @func    fs_stack_push()
/// @desc    This function will push (add) a value, which can be of any data type, onto the top of the stack. The function can take a further 14 optional arguments (making a total of 15 possible additions), permitting you to push multiple values consecutively to the stack in a single call.
/// @param   {Id.DsStack} id : The id of the data structure to push onto.
/// @param   {ArgumentIdentity} ... : The value to push onto the stack.
/// @return  {Undefined}
#endregion
function fs_stack_push(_id) {
	__FS_ARG_INIT
	__arr[0] = _id.value;
	__FS_ARG_SET
	return script_execute_ext(ds_stack_push, __arr);
	__FS_ARG_RESET
}
#region JsDocs
/// @func    fs_stack_pop()
/// @desc    This function will pop the top value off of the DS stack , removing it from the stack and returning the value to be stored in a variable. If the stack is empty then the function will return the constant undefined, otherwise it will return the real or string value contained in the stack.
/// @param   {Id.DsStack} id : The id of the data structure to pop from.
/// @return  {ArgumentIdentity}
#endregion
function fs_stack_pop(_id) {
	_id = _id.value;
	return ds_stack_pop(_id)
}
#region JsDocs
/// @func    fs_stack_top()
/// @desc    This function will only read the first value of the stack (that which is "on top"). It will not pop the value, meaning that it can still be read in the future by this function or the ds_stack_pop(). If the stack is empty then the function will return the constant undefined, otherwise it will return the real or string value contained in the stack.
/// @param   {Id.DsStack} id : The id of the data structure to read from.
/// @return  {ArgumentIdentity}
/// @pure
/// @deprecated
#endregion
function fs_stack_top(_id) {
	_id = _id.value;
	return ds_stack_top(_id)
}
#region JsDocs
/// @func    fs_stack_write()
/// @desc    This function returns a string which can then be stored or transferred to another data structure using the ds_stack_read() function.
/// @param   {Id.DsStack} id : The id of the data structure to write.
/// @return  {String}
/// @pure
/// @deprecated
#endregion
function fs_stack_write(_id) {
	_id = _id.value;
	return ds_stack_write(_id)
}
#region JsDocs
/// @func    fs_stack_read()
/// @desc    With this function you can recreate a saved DS stack (one that has previously been written as a string using ds_stack_write()). You must first create a new DS stack to read the string into, and if the DS stack already exists and has information stored in it, then this will be cleared before reading. This function is of vital importance when creating save/load mechanisms for your game.
/// @param   {Id.DsStack} id : The id of the data structure to read into.
/// @param   {String} str : The string to read from.
/// @param   {Bool} legacy : Can be either true or false or omitted completely.
/// @return  {Undefined}
#endregion
function fs_stack_read(_id, _str, _legacy=undefined) {
	_id = _id.value;
	return ds_stack_read(_id, _str, _legacy)
}
