
struct Utils
{
	import static void RestrictCursorsTo(CursorMode cm);
	import static Point* CenterAround(int x, int y, int w, int h, int xmin, int ymin, int xmax, int ymax);
	import static Point* ClampPosition(int x, int y, int w, int h, int xmin, int ymin, int xmax, int ymax);
	import static void HideAllGUI();
};
