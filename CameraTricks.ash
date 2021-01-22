
struct CameraTricks
{
	import static bool IsDone(int move_id);
	import static int MoveCamera(int cam_id, int cam_x, int cam_y, float seconds, BlockingStyle block);
	import static int MoveAndScaleCamera(int cam_id, int cam_x, int cam_y, int cam_w, int cam_h, float seconds, BlockingStyle block);
	import static int MoveViewport(int view_id, int view_x, int view_y, float seconds, BlockingStyle block);
	import static int MoveAndScaleViewport(int view_id, int view_x, int view_y, int view_w, int view_h, float seconds, BlockingStyle block);
	import static int MoveAndScaleBoth(int cam_id, int cam_x, int cam_y, int cam_w, int cam_h,
				int view_id, int view_x, int view_y, int view_w, int view_h, float seconds, BlockingStyle block);

	import static void FollowAspectRatio(int view_id, int bound_x, int bound_y, int bound_w, int bound_h);
	import static void UnfollowAspectRatio(int view_id);
	
	import static void FollowCharX(int cam_id, Character* c);
	import static void UnfollowChar(int cam_id);
};
