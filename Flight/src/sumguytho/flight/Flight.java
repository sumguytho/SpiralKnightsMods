package sumguytho.flight;

import com.threerings.math.Vector2f;

import org.lwjgl.input.Keyboard;

import sumguytho.common.Mod;
import sumguytho.common.ModManagerImpl;
import sumguytho.common.ModSharedResources;
import sumguytho.common.TickObserver;

public class Flight implements Mod, TickObserver {
	private static final String NAME = "flight";
	private static final String VERSION = "1.0.0";
	
	public static Flight get__Callback() {
		return (Flight)ModManagerImpl.get__Callback().getMod(NAME);
	}
	
	// it's only accessed by awt eventqueue one event at a time so it needn't be atomic, i think?
	private Vector2f _disposition = new Vector2f();
	private static final float BASE_SPEED = 5.f;
	private float _speed = BASE_SPEED;
	private Vector2f _latestPosition = new Vector2f();
	
	public void modifyActor__Callback(Vector2f position_inout, int actorId) {
		int pawnId = _res.getProjXCtx().uk().pawnId;
		if (actorId == pawnId) {
			position_inout.x += _disposition.x;
			position_inout.y += _disposition.y;
		}
		_latestPosition.x = position_inout.x;
		_latestPosition.y = position_inout.y;
	}

	private ModSharedResources _res;

	@Override
	public void ctor(ModSharedResources res) {
		_res = res;
		_res.addTickObserver(this);
	}
	@Override
	public void initialize() {
		// TODO Auto-generated method stub
		
	}
	@Override
	public boolean initializeReady() {
		return _res.getProjXCtx() != null && _res.getProjXCtx().uk() != null;
	}
	@Override
	public void enable() {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void disable() {
		// TODO Auto-generated method stub
		
	}
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public String getName() { return NAME; }
	@Override
	public String getVersion() { return VERSION; }

	@Override
	public void tick(float elapsed) {
		int moveUp = Keyboard.isKeyDown(Keyboard.KEY_UP) ? 1 : 0;
		int moveDown = Keyboard.isKeyDown(Keyboard.KEY_DOWN) ? 1 : 0;
		int moveLeft = Keyboard.isKeyDown(Keyboard.KEY_LEFT) ? 1 : 0;
		int moveRight = Keyboard.isKeyDown(Keyboard.KEY_RIGHT) ? 1 : 0;
		
		_disposition.x += elapsed * _speed * (moveRight - moveLeft);
		_disposition.y += elapsed * _speed * (moveUp - moveDown);
	}
	
	public void setSpeed(float newSpeed) {
		
	}
	public float getSpeed() {
		return 0;
	}
	public void resetSpeed() {
		
	}

	public void setPosition(Vector2f newPosition) {
		
	}
	public Vector2f getPosition() {
		return new Vector2f();
	}
	public void resetPosition() {
		
	}
}
