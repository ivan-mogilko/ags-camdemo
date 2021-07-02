//////////////////////////////////////////////////////////////////////////////////////////
// Utils.ash/asc
//----------------------------------------------------------------------------------------
//
// A random collection of utility functions.
//
//////////////////////////////////////////////////////////////////////////////////////////

// TINY_FLOAT constant, to detect floating point values close to zero.
// Normally you should not compare a float variable to 0 directly, as result of
// calculations may end up with a value slightly larger or smaller than a 0 (that's just
// how floats work). So instead we compare as
// (float_var >= TINY_FLOAT && float_var <= TINY_FLOAT)
// - that means that the value is **close enough** to zero.
#define TINY_FLOAT 0.00000001


struct Utils
{
	/// Disable all cursor modes except the given one
	import static void RestrictCursorsTo(CursorMode cm);
	/// Clamps (restricts) position of a rectangle (x,y,w,h) to the parent rectangle.
	import static Point* ClampPosition(int x, int y, int w, int h, int xmin, int ymin, int xmax, int ymax);
	/// Hides all the GUIs in game by setting Visible = false
	import static void HideAllGUI();

	/// DisplayTopBar aligned to the bottom-center of the screen.
	/* Uses character's SpeechColor and writes its name in the title. */
	import static void SpeechBox(Character* c, String text);
};
