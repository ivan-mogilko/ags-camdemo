//////////////////////////////////////////////////////////////////////////////////////////
// CameraTricks.ash/asc
//----------------------------------------------------------------------------------------
//
// Various Viewport and Camera moves. May be blocking or non-blocking. Multiple Viewports
// and Cameras may be moved simultaneously.
//
// I know I could've use Tween module for many things here, and so should you in your
// game. But I decided to keep the script without additional dependencies, and besides
// there's not many uses for the Tween module in this demo.
//
// Each of the Move*() commands return the movement instance ID, letting you track its
// completion status using IsDone().
//
//////////////////////////////////////////////////////////////////////////////////////////

struct CameraTricks
{
	/// Tells if the given move is completed.
	import static bool IsDone(int move_id);
	/// Moves camera to the certain position over number of seconds.
	import static int MoveCamera(int cam_id, int cam_x, int cam_y, float seconds, BlockingStyle block);
	/// Moves and resizes camera to the certain position over number of seconds.
	import static int MoveAndScaleCamera(int cam_id, int cam_x, int cam_y, int cam_w, int cam_h, float seconds, BlockingStyle block);
	/// Moves viewport to the certain position over number of seconds.
	import static int MoveViewport(int view_id, int view_x, int view_y, float seconds, BlockingStyle block);
	/// Moves and resizes viewport to the certain position over number of seconds.
	import static int MoveAndScaleViewport(int view_id, int view_x, int view_y, int view_w, int view_h, float seconds, BlockingStyle block);
	/// Moves and resizes a camera and a viewport to the certain position over number of seconds simultaneously.
	import static int MoveAndScaleBoth(int cam_id, int cam_x, int cam_y, int cam_w, int cam_h,
				int view_id, int view_x, int view_y, int view_w, int view_h, float seconds, BlockingStyle block);

	/// Makes a viewport keep same aspect ratio of the camera's image at all times.
	/* This means that if camera's size change, then the viewport also resizes itself
	 * trying to keep image proportions same. Bound_ parameters specify the borders
	 * which this viewport must not exceed. */
	import static void FollowAspectRatio(int view_id, int bound_x, int bound_y, int bound_w, int bound_h);
	/// Disables auto-keeping aspect ratio for this viewport.
	import static void UnfollowAspectRatio(int view_id);

	/// Make this camera to specifically follow character's X coordinate, while retaining its own Y.
	import static void FollowCharX(int cam_id, Character* c);
	/// Make this camera to no longer follow any character.
	import static void UnfollowChar(int cam_id);
};
