// FS_Step_Rate
// Number of frames between each garbage collector tick.
// Lower values = more frequent checks (faster cleanup, more overhead).
#macro FS_Step_Rate 1

// FS_Collection_Rate
// Default lifespan (in ticks) for a tracked object before it is eligible for collection.
// Each GC tick decrements this counter.
#macro FS_Collection_Rate 3

// FS_Grid_Min_Size
// Minimum number of rows the GC grid will shrink down to when usage drops.
// Raise this if you expect to manage hundreds/thousands of objects,
// to reduce frequent grow/shrink cycles.
#macro FS_Grid_Min_Size 64
