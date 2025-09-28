#region JsDocs
/// @func    fs_map_create()
/// @desc    This function is used to create a new, empty, DS map and will return its id which is then used to access the data structure in all other DS map functions.
/// @return  {Id.DsMap}
#endregion
function fs_map_create() {
	return FS_Destructor(ds_map_create(), ds_map_destroy);
}
#region JsDocs
/// @func    fs_map_destroy()
/// @desc    DS maps take up space in memory, which is allocated to them when they are created. This means that you also need to free this memory when the DS map is not needed to prevent errors, memory leaks and loss of performance when running your game. This function does just that. Note that destroying a map will de-reference any data structures stored in the map giving a memory leak, so you would need to go through the map and destroy all data structure items manually before destroying it to prevent this. The only time this is not required is when you have flagged any items in the map as a DS list or as another DS map, in which case these items will be destroyed and their memory cleaned up automatically as well.
/// @param   {Id.DsMap} id : The id of the map to destroy.
/// @return  {Undefined}
#endregion
function fs_map_destroy(_id) {
	_id = _id.value;
	return ds_map_destroy(_id)
}
#region JsDocs
/// @func    fs_map_clear()
/// @desc    This function will clear the (previously created) DS map of all key/value pairs, but it will not delete the DS map itself from memory. For that you should use the function ds_map_destroy(). Note that clearing a map will de-reference any data structures stored in the map giving a memory leak, so you would need to go through it and destroy all data structure items manually before clearing the map to prevent this. The only time this is not required is when you have flagged any items in the map as a DS list or as another DS map, in which case these items will be destroyed (not cleared!) and their memory cleaned up automatically when the parent map is cleared.
/// @param   {Id.DsMap} id : The id of the data structure to clear.
/// @return  {Undefined}
#endregion
function fs_map_clear(_id) {
	_id = _id.value;
	return ds_map_clear(_id)
}
#region JsDocs
/// @func    fs_map_copy()
/// @desc    You can use this function to copy the contents of one map into another one that you have previously created using ds_map_create(). If the DS map that is being copied to is not empty, then this function will clear it first before copying. The original DS map remains unchanged by this process.
/// @param   {Id.DsMap} destination : The id of the map you are copying to
/// @param   {Id.DsMap} source : The id of the map you are copying from
/// @return  {Undefined}
#endregion
function fs_map_copy(_destination, _source) {
	_destination = _destination.value;
	_source = _source.value;
	return ds_map_copy(_destination, _source)
}
#region JsDocs
/// @func    fs_map_size()
/// @desc    With this function you can find how many key/values pairs the (previously created) DS map contains.
/// @param   {Id.DsMap} id : The id of the data structure to check.
/// @return  {Real}
/// @pure
/// @deprecated
#endregion
function fs_map_size(_id) {
	_id = _id.value;
	return ds_map_size(_id)
}
#region JsDocs
/// @func    fs_map_empty()
/// @desc    This function will simply return false if the specified (previously created) DS map contains any key/value pairs, or true if it does not.
/// @param   {Id.DsMap} id : The id of the data structure to check.
/// @return  {Bool}
/// @pure
/// @deprecated
#endregion
function fs_map_empty(_id) {
	_id = _id.value;
	return ds_map_empty(_id)
}
#region JsDocs
/// @func    fs_map_add()
/// @desc    This function should be used to add sets of key/value pairs into the specified DS map. You can check this function to see if it was successful or not (it will return true on success or false otherwise), as it may fail if there already exists the same key in the DS map or you specify a non-existent DS map as the ID of the map to add to. The keys and and values you supply can be made up of any combination of data types, so all of the following - and more - are acceptable (although, in practice, you would most commonly use a string for the key):
/// @param   {Id.DsMap} id : The id of the map to add to.
/// @param   {Any} key : The key of the value to add.
/// @param   {ArgumentIdentity} val : The value to add to the map.
/// @return  {Bool}
#endregion
function fs_map_add(_id, _key, _val) {
	_id = _id.value;
	return ds_map_add(_id, _key, _val)
}
#region JsDocs
/// @func    fs_map_set()
/// @desc    With this function you can set the value of a key within a given DS map. You supply the DS map ID value (as returned by the function ds_map_create()), then give the key you want to set and the value to set it to. Keys can be integers or strings, and if the given key does not exist then it will be created for you and set to the value. This function is the same as using the DS map accessor to set/create a map key/value pair. The function does not return anything, so if you need to check if the key value has been replaced or a new key has been created, then you should use the function ds_map_replace().
/// @param   {Id.DsMap} id : The id of the map to use.
/// @param   {Any} key : The key to set.
/// @param   {ArgumentIdentity} value : The value to set the key to.
/// @return  {Undefined}
#endregion
function fs_map_set(_id, _key, _value) {
	_id = _id.value;
	return ds_map_set(_id, _key, _value)
}
#region JsDocs
/// @func    fs_map_add_list()
/// @desc    With this function you can assign a (previously created) DS list to a key within the given DS map. This function is designed for creating JSON compatible maps which you would then encode using json_encode() and should only be used in conjunction with that functionality. If a DS map has a list added in this way, destroying the parent map will also destroy the contained lists and free their memory, and calling ds_map_clear() on the parent map will also destroy and clean up any flagged lists.
/// @param   {Id.DsMap} id : The id of the map to use.
/// @param   {Any} key : The key for the added list.
/// @param   {Id.DsList} value : The id of the list to add.
/// @return  {Undefined}
#endregion
function fs_map_add_list(_id, _key, _value) {
	_id = _id.value;
	return ds_map_add_list(_id, _key, _value)
}
#region JsDocs
/// @func    fs_map_add_map()
/// @desc    With this function you can assign a (previously created) DS map to a key within the given DS map . This function is designed for creating JSON compatible maps which you would then encode using json_encode() and should only be used in conjunction with that functionality. If a DS map has another map added in this way, then destroying the parent map will also destroy the contained maps and free their memory, and calling ds_map_clear() on the parent map will also destroy and clean up any flagged maps.
/// @param   {Id.DsMap} id : The id of the map to use.
/// @param   {Any} key : The key for the added map.
/// @param   {Id.DsMap} value : The id of the map to add.
/// @return  {Undefined}
#endregion
function fs_map_add_map(_id, _key, _value) {
	_id = _id.value;
	return ds_map_add_map(_id, _key, _value)
}
#region JsDocs
/// @func    fs_map_replace()
/// @desc    With this function you can change the value for the given key within the a DS map . You supply the index to the map (as returned by the function ds_map_create()) and then the key to replace - either a string or an integer - and the value to replace the key value with. If the given key does not exist then it will be created for you, and if it does then the current value will be replaced with the new value. The function will return true if the key exists and the value is replaced, and false if the key does not exist and a new key was created with the value.
/// @param   {Id.DsMap} id : The id of the map to change.
/// @param   {Any} key : The key with the value that should be replaced by the new one
/// @param   {ArgumentIdentity} val : The new value to replace the given value with
/// @return  {Bool}
#endregion
function fs_map_replace(_id, _key, _val) {
	_id = _id.value;
	return ds_map_replace(_id, _key, _val)
}
#region JsDocs
/// @func    fs_map_replace_list()
/// @desc    With this function you can replace a DS list that has been stored in the given "key" with another list that has been created previously. This function is designed for creating JSON compatible maps which you would then encode using json_encode() and should only be used in conjunction with that functionality.
/// @param   {Id.DsMap} id : The id of the map to use.
/// @param   {Any} key : The key to replace.
/// @param   {Id.DsList} value : The id of the ds_list to use to replace the one previously stored in the given key.
/// @return  {Undefined}
#endregion
function fs_map_replace_list(_id, _key, _value) {
	_id = _id.value;
	return ds_map_replace_list(_id, _key, _value)
}
#region JsDocs
/// @func    fs_map_replace_map()
/// @desc    With this function you can replace a DS Map that has been stored in the given "key" with another map that has been created previously. This function is designed for creating JSON compatible maps which you would then encode using json_encode() and should only be used in conjunction with that functionality.
/// @param   {Id.DsMap} id : The id of the ds_map to use.
/// @param   {Any} key : The key to replace.
/// @param   {Id.DsMap} value : The id of the ds_map to use to replace the one previously stored in the given key.
/// @return  {Undefined}
#endregion
function fs_map_replace_map(_id, _key, _value) {
	_id = _id.value;
	return ds_map_replace_map(_id, _key, _value)
}
#region JsDocs
/// @func    fs_map_delete()
/// @desc    With this function you can remove any given key (and its corresponding value) from the given, previously created, DS map .
/// @param   {Id.DsMap} id : The id of the map to change.
/// @param   {Any} key : The key (along with its associated value) to delete.
/// @return  {Undefined}
#endregion
function fs_map_delete(_id, _key) {
	_id = _id.value;
	return ds_map_delete(_id, _key)
}
#region JsDocs
/// @func    fs_map_exists()
/// @desc    This function will return true if the specified key exists in the (previously created) DS map , and false if it does not.
/// @param   {Id.DsMap} id : the id of the data structure to check
/// @param   {Any} key : the key to check for
/// @return  {Bool}
/// @pure
/// @deprecated
#endregion
function fs_map_exists(_id, _key) {
	_id = _id.value;
	return ds_map_exists(_id, _key)
}
#region JsDocs
/// @func    fs_map_keys_to_array()
/// @desc    With this function you can retrieve all of the keys that a DS map contains. You supply the DS map ID to get the keys from (as returned by ds_map_create()) and the function will return an array where each entry in the array is a key from the DS map. The function has an optional second argument where you can supply an array that you have created, in which case the map key data will be appended onto any existing data in the array. Note that the function will modify the array supplied directly, but will also return a reference to it (or a reference to a new array if none is supplied).
/// @param   {Id.DsMap} id : The id of the map to use.
/// @param   {Array} array : The array to append the DS map keys to.
/// @return  {Array[Any]}
/// @pure
/// @deprecated
#endregion
function fs_map_keys_to_array(_id, _array=undefined) {
	_id = _id.value;
	return ds_map_keys_to_array(_id, _array)
}
#region JsDocs
/// @func    fs_map_values_to_array()
/// @desc    With this function you can retrieve all of the values that a DS map contains for each key in the map. You supply the DS map ID to get the keys from (as returned by ds_map_create()) and the function will return an array where each entry in the array is a value from the DS map (for example, if the map has 10 keys, then an array of 10 entries will be returned with each entry corresponding to a value for a key). The function has an optional second argument where you can supply an array that you have created, in which case the map key value data will be appended onto any existing data in the array. Note that the function will modify the array supplied directly, but will also return a reference to it (or a reference to a new array if none is supplied).
/// @param   {Id.DsMap} id : The id of the map to use.
/// @param   {Array} array : The array to append the DS map values to.
/// @return  {Array[Any]}
/// @pure
/// @deprecated
#endregion
function fs_map_values_to_array(_id, _array=undefined) {
	_id = _id.value;
	return ds_map_values_to_array(_id, _array)
}
#region JsDocs
/// @func    fs_map_find_value()
/// @desc    With this function you can get the value from a specified key. The input values of the function are the (previously created) DS map to use and the key to check for.
/// @param   {Id.DsMap} id : The id of the map to use.
/// @param   {Any} key : The key to find.
/// @return  {ArgumentIdentity}
/// @pure
/// @deprecated
#endregion
function fs_map_find_value(_id, _key) {
	_id = _id.value;
	return ds_map_find_value(_id, _key)
}
#region JsDocs
/// @func    fs_map_is_map()
/// @desc    With this function you can check to see if a DS map is stored in the given map key. If the given key contains a DS map ID, then the function will return true otherwise it will return false.
/// @param   {Id.DsMap} id : The id of the ds_map to use.
/// @param   {Any} key : The key to replace.
/// @return  {Bool}
/// @pure
/// @deprecated
#endregion
function fs_map_is_map(_id, _key) {
	_id = _id.value;
	return ds_map_is_map(_id, _key)
}
#region JsDocs
/// @func    fs_map_is_list()
/// @desc    With this function you can check to see if a DS list is stored in the given map key. If the given key contains a DS list ID, then the function will return true otherwise it will return false.
/// @param   {Id.DsMap} id : The id of the ds_map to use.
/// @param   {Any} key : The key to check.
/// @return  {Bool}
/// @pure
/// @deprecated
#endregion
function fs_map_is_list(_id, _key) {
	_id = _id.value;
	return ds_map_is_list(_id, _key)
}
#region JsDocs
/// @func    fs_map_find_previous()
/// @desc    This function returns the previous key stored in the DS map before the one specified in the function. This can be useful if your have to iterate through the DS map looking for something, but should be avoided if possible as it can be slow. If no such key exists then the function will return undefined. You should always check this using the is_undefined() function.
/// @param   {Id.DsMap} id : The id of the map to use.
/// @param   {Any} key : The key to find the previous one to.
/// @return  {Any}
/// @pure
/// @deprecated
#endregion
function fs_map_find_previous(_id, _key) {
	_id = _id.value;
	return ds_map_find_previous(_id, _key)
}
#region JsDocs
/// @func    fs_map_find_next()
/// @desc    This function returns the next key stored in the DS map after the one specified in the function. This can be useful if your have to iterate through the DS map looking for something, but should be avoided if possible as it can be slow. If no such key exists then the function will return undefined. You should always check this using the is_undefined() function.
/// @param   {Id.DsMap} id : The id of the map to use.
/// @param   {Any} key : The key to find the next one to.
/// @return  {Any}
/// @pure
/// @deprecated
#endregion
function fs_map_find_next(_id, _key) {
	_id = _id.value;
	return ds_map_find_next(_id, _key)
}
#region JsDocs
/// @func    fs_map_find_first()
/// @desc    This function returns the first key stored in the DS map. This is not the first key in the order you added them! DS maps are not stored in a linear form, for that use DS list, so all this does is find the first key as stored by the computer. This can be useful if your have to iterate through the DS map looking for something, but should be avoided if possible as it can be slow.
/// @param   {Id.DsMap} id : The id of the map to use.
/// @return  {Any}
/// @pure
/// @deprecated
#endregion
function fs_map_find_first(_id) {
	_id = _id.value;
	return ds_map_find_first(_id)
}
#region JsDocs
/// @func    fs_map_find_last()
/// @desc    This function returns the last key stored in the DS map. This is not the last key in the order that you have added them! DS maps are not stored in a linear form, for that use DS lists, so all this does is find the last key as stored by the computer. This can be useful if your have to iterate through the DS map looking for something, but should be avoided if possible as it can be slow.
/// @param   {Id.DsMap} id : The id of the map to use.
/// @return  {Any}
/// @pure
/// @deprecated
#endregion
function fs_map_find_last(_id) {
	_id = _id.value;
	return ds_map_find_last(_id)
}
#region JsDocs
/// @func    fs_map_write()
/// @desc    This function will turn the DS map data of the specified map into string format which can then be written to an *.ini or a *.txt file for easy storage. This string can then be later read back into a new ds_map using ds_map_read().
/// @param   {Id.DsMap} id : The id of the data structure to use
/// @return  {String}
/// @pure
/// @deprecated
#endregion
function fs_map_write(_id) {
	_id = _id.value;
	return ds_map_write(_id)
}
#region JsDocs
/// @func    fs_map_read()
/// @desc    This function will take a string that has previously been created by the function ds_map_write() and then read it into a previously created DS map. If the map that the string is being read into contains any key/value pairs, these will be cleared first before the saved map is re-constructed.
/// @param   {Id.DsMap} id : The id of the data structure to read the string into
/// @param   {String} str : The string to read
/// @param   {Bool} legacy : Can be either true or false or omitted completely.
/// @return  {Undefined}
#endregion
function fs_map_read(_id, _str, _legacy=undefined) {
	_id = _id.value;
	return ds_map_read(_id, _str, _legacy)
}
#region JsDocs
/// @func    fs_map_secure_save()
/// @desc    This function will save the contents of the given DS map to a file that is linked to the device it was created on (meaning it can't be read if transferred to any other device). The file itself can have almost any extension (for example, *.dat, *.json, *.bin, etc...) and will be obfuscated and stored to local storage on the target platform. You can then re-load the ds_map using the function ds_map_secure_load(). Note that if the DS map being saved contains an array, this array will be converted into a DS list instead when saved.
/// @param   {Id.DsMap} map : The id of the data structure to use
/// @param   {String} filename : The name of the file to save the map to
/// @return  {Bool}
#endregion
function fs_map_secure_save(_map, _filename) {
	_map = _map.value;
	return ds_map_secure_save(_map, _filename)
}
#region JsDocs
/// @func    fs_map_secure_load()
/// @desc    This function will load a previously saved DS map from the given file. This file must have been previously created using the ds_map_secure_save() function, and, when loaded, the function will return the index of the DS map that has been created from the loaded data. This DS map index should be stored in a variable and used for all further function calls to this map. Note that if the DS map being loaded was saved with an array as one of the key values, this array will have been converted into a DS list on load.
/// @param   {String} filename : The name of the file to load the map data from.
/// @return  {Id.DsMap}
#endregion
function fs_map_secure_load(_filename) {
	_filename = _filename.value;
	return ds_map_secure_load(_filename)
}
#region JsDocs
/// @func    fs_map_secure_load_buffer()
/// @desc    This function will load a secure saved DS map from a buffer. You must previously have loaded the buffer into memory (using buffer_load()) and then passing that into this function will return a DS map populated with the contents of the buffer. Note that the buffer must have been created using the function ds_map_secure_save_buffer() for this to work correctly, and also note that if the DS map being loaded contained an array, this will be converted into a DS list instead on load.
/// @param   {Id.Buffer} buffer : The buffer ID of the buffer to load the map data from.
/// @return  {Id.DsMap}
#endregion
function fs_map_secure_load_buffer(_buffer) {
	_buffer = _buffer.value;
	return ds_map_secure_load_buffer(_buffer)
}
#region JsDocs
/// @func    fs_map_secure_save_buffer()
/// @desc    This function will save a previously created DS map to a buffer. You supply the DS map ID value (as returned by the function ds_map_create()) and the ID of the buffer to write to (as returned by the function buffer_create()). Note that if the DS map being saved contains an array, this will be converted into a DS list instead when saved.
/// @param   {Id.DsMap} id : The DS map ID value.
/// @param   {Id.Buffer} buffer : The buffer ID value.
/// @return  {Real}
#endregion
function fs_map_secure_save_buffer(_id, _buffer) {
	_id = _id.value;
	return ds_map_secure_save_buffer(_id, _buffer)
}


