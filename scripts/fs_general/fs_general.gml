#region JsDocs
/// @func    fs_set_precision()
/// @desc    When comparing values, for example when searching in a map or sorting a list, GameMaker must decide when two values are equal. For strings and integer values this is clear but for real numbers, due to floating point round-off errors, seemingly equal numbers can easily become unequal. For example, it's possible that (5 / 3) * 3 will not be equal to 5! To help avoid this, a precision value is used on all real number functions, and when the difference between two numbers is smaller than this precision they are considered equal. The default a precision of 0.0000001 is used for all data structure functions unless changed by this function.
/// @param   {Real} prec : The precision value (default 0.0000001)
/// @return  {Undefined}
#endregion
function fs_set_precision(_prec) {
	_prec = _prec.value;
	return ds_set_precision(_prec)
}
#region JsDocs
/// @func    fs_exists()
/// @desc    With this function you can check to see if a data structure of the given type exists. You supply the "index" value (as held in a variable) and the DS "type", which can be any of the constants listed below, and the function will return true if the data structure exists and false otherwise.
/// @param   {Any} ind : The variable index to check for the data structure
/// @param   {Constant.DsType} type : The type of data structure to check for (see the list of constants below)
/// @return  {Bool}
/// @pure
/// @deprecated
#endregion
function fs_exists(_ind, _type) {
	_ind = _ind.value;
	return ds_exists(_ind, _type)
}

