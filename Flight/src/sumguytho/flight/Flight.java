package sumguytho.flight;

import com.threerings.math.Vector2f;
import com.threerings.projectx.client.chat.ProjectXChatDirector;
import com.threerings.util.L;

import org.lwjgl.input.Keyboard;

import sumguytho.common.Mod;
import sumguytho.common.ModManagerImpl;
import sumguytho.common.ModSharedResources;
import sumguytho.common.TickObserver;

public class Flight implements Mod, TickObserver {
	private static final String NAME = "flight";
	private static final String VERSION = "1.0.1";
	
	public static Flight get__Callback() {
		return (Flight)ModManagerImpl.get__Callback().getMod(NAME);
	}
	
	// it's only accessed by awt eventqueue one event at a time so it needn't be atomic, i think?
	private Vector2f _disposition = new Vector2f();
	public static final float BASE_SPEED = 5.f;
	private float _speed = BASE_SPEED;
	private Vector2f _latestPosition = new Vector2f();
	
	public void modifyActor__Callback(Vector2f position_inout, int actorId) {
		if (!_isEnabled) { return; }
		
		int pawnId = _res.getProjXCtx().ti().pawnId;
		if (actorId == pawnId) {
			position_inout.x += _disposition.x;
			position_inout.y += _disposition.y;
		}
		_latestPosition.x = position_inout.x;
		_latestPosition.y = position_inout.y;
	}

	private ModSharedResources _res;
	private boolean _wasInitialized = false;
	private boolean _isEnabled = false;

	@Override
	public void ctor(ModSharedResources res) {
		_res = res;
	}
	@Override
	public void initialize() {
		_res.addTickObserver(this);

        L msgbundle = _res.getProjXCtx().getMessageManager().dD("chat");
        ProjectXChatDirector chatdir = _res.getChatDir();
        chatdir.a(msgbundle, "flight", new FlightChatCommandHandler(chatdir, new FlightControl(this)));
		
		_isEnabled = true;
		_wasInitialized = true;
	}
	@Override
	public boolean initializeReady() {
		return _res.getProjXCtx() != null && _res.getChatDir() != null && _res.getProjXCtx().ti() != null && Keyboard.isCreated();
	}
	@Override
	public boolean wasInitialized() { return _wasInitialized; }
	@Override
	public void enable() { _isEnabled = true; }
	@Override
	public void disable() { _isEnabled = false; }
	@Override
	public boolean isEnabled() { return _isEnabled; }
	@Override
	public String getName() { return NAME; }
	@Override
	public String getVersion() { return VERSION; }

	
	@Override
	public void tick(float elapsed) {
		if (!_isEnabled) { return; }
		
		int moveUp = Keyboard.isKeyDown(Keyboard.KEY_UP) ? 1 : 0;
		int moveDown = Keyboard.isKeyDown(Keyboard.KEY_DOWN) ? 1 : 0;
		int moveLeft = Keyboard.isKeyDown(Keyboard.KEY_LEFT) ? 1 : 0;
		int moveRight = Keyboard.isKeyDown(Keyboard.KEY_RIGHT) ? 1 : 0;
		
		_disposition.x += elapsed * _speed * (moveRight - moveLeft);
		_disposition.y += elapsed * _speed * (moveUp - moveDown);
	}
	
	public void setSpeed(float newSpeed) { _speed = newSpeed; }
	public float getSpeed() { return _speed; }
	public void resetSpeed() { _speed = BASE_SPEED; }

	public void setPosition(Vector2f newPosition) {
		_disposition.x = newPosition.x - _latestPosition.x;
		_disposition.y = newPosition.y - _latestPosition.y;
	}
	public Vector2f getPosition() {
		return new Vector2f(_latestPosition.x + _disposition.x, _latestPosition.y + _disposition.y);
	}
	public void resetPosition() { _disposition.x = _disposition.y = 0; }
}
