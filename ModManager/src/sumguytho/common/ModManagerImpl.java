package sumguytho.common;

import java.awt.EventQueue;
import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;
import java.util.Arrays;

import com.threerings.opengl.gui.ax;
import com.threerings.projectx.client.aD;
import com.threerings.projectx.client.chat.ProjectXChatDirector;
import com.threerings.projectx.util.A;
import com.threerings.util.L;
import com.threerings.util.M;

public class ModManagerImpl implements Mod, ModSharedResources, ModManager, TickObserver {
	public static String NAME = "modmanager";
	public static String VERSION = "2.0.1";

	private static ModManagerImpl _modRoot = new ModManagerImpl();
	
	private ModManagerImpl() { }
	
	public static ModManagerImpl get__Callback() { return _modRoot; }
	
	public void init__Callback() { initMods(); }
	
	private A _projxctx;
	private aD _hudwnd;
	private aD.a _hudwndroot;
	private ProjectXChatDirector _chatdir;
	
	public void setProjXCtx__Callback(A ctx) { _projxctx = ctx; }
	public void setHUDWnd__Callback(aD hud) { _hudwnd = hud; }
	public void setHUDWndRoot__Callback(aD.a hud) { _hudwndroot = hud; }
	public void setChatDir__Callback(ProjectXChatDirector chatDir) { _chatdir = chatDir; }

	@Override
	public void ctor(ModSharedResources res) {
		M msgManager = _projxctx.getMessageManager();
        L msgbundle = msgManager.dD("chat");
        ModControlChatCommandHandler cmdhandler = new ModControlChatCommandHandler(_chatdir, new ModControl(this));
        _chatdir.a(msgbundle, "mods", cmdhandler);
        EventQueue.invokeLater(new TickService(this));
	}
	@Override
	public void enable() {}
	@Override
	public void disable() {}
	@Override
	public boolean isEnabled() { return true; }
	@Override
	public String getName() { return NAME; }
	@Override
	public String getVersion() { return VERSION; }
	@Override
	public boolean initializeReady() { return true; }
	@Override
	public boolean wasInitialized() { return true; }
	@Override
	public void initialize() { }

	@Override
	public A getProjXCtx() { return _projxctx; }
	@Override
	public aD getHUDWnd() { return _hudwnd; }
	@Override
	public aD.a getHUDWndRoot() { return _hudwndroot; }
	@Override
	public ProjectXChatDirector getChatDir() { return _chatdir; }
	
	private ArrayList<String> _modClasses = new ArrayList<String>( Arrays.asList(
			"sumguytho.hudhider.HUDHider",
			"sumguytho.flight.Flight"
			) );
	private ArrayList<String> _modClassesNotFound = new ArrayList<String>();
	private HashMap<String, Mod> _mods = new HashMap<String, Mod>();

	private static class ModInitializer implements Runnable {
		private ModManager _modmgr;
		
		public ModInitializer(ModManager modmgr) {
			_modmgr = modmgr;
		}
		
		@Override
		public void run() {
			boolean uninitialized_left = false;
			for (Mod mod : _modmgr.getMods()) {
				boolean needs_init = !mod.wasInitialized();
				if (needs_init && mod.initializeReady()) { mod.initialize(); }
				uninitialized_left = uninitialized_left || needs_init;
			}
			if (uninitialized_left) { EventQueue.invokeLater(this); }
		}
	};
	
	@Override
	public void initMods() {
		ctor(this);
		_mods.put(NAME, this);
		for (String modClassName : _modClasses) {
			if (_mods.containsKey(modClassName)) { continue; }
			try {
				Mod mod = (Mod)Class.forName(modClassName).newInstance();
				mod.ctor(this);
				_mods.put(mod.getName(), mod);
			}
			catch(Exception e) {
				_modClassesNotFound.add(modClassName);
			}
		}
		EventQueue.invokeLater(new ModInitializer(this));
	}
	@Override
	public List<Mod> getMods(){ return new ArrayList<Mod>( _mods.values() ); }
	@Override
	public Mod getMod(String name) { return _mods.get(name); }
	@Override
	public List<String> getMissingClassNames(){ return _modClassesNotFound; }

	
	
	private static class TickService implements Runnable {
		private TickObserver _rootTickObserver;
		private long _prevMillis = System.currentTimeMillis();
		private static final long MILLIS_IN_SECOND = 1000;
		private static final long TARGET_FPS = 60;
		private static final long MILLIS_PER_FRAME = MILLIS_IN_SECOND / TARGET_FPS;
		
		public TickService(TickObserver tickObserver){
			_rootTickObserver = tickObserver;
		}
		
		@Override
		public void run() {
			long curMillis = System.currentTimeMillis();
			long elapsed = curMillis - _prevMillis;
			
			if (elapsed >= MILLIS_PER_FRAME) {
				if (elapsed < MILLIS_IN_SECOND) {
					_rootTickObserver.tick( (float)elapsed / MILLIS_IN_SECOND );
				}
				_prevMillis = curMillis;
			}
			
			EventQueue.invokeLater(this);
		}
	};
	
	private ArrayList<TickObserver> _tickObservers = new ArrayList<TickObserver>();

	@Override
	public void tick(float elapsed) {
		for (TickObserver tickObserver : _tickObservers) {
			tickObserver.tick(elapsed);
		}
	}
	@Override
	public void addTickObserver(TickObserver tickObserver) {
		if (tickObserver == null) { return; }
		_tickObservers.add(tickObserver);
	}
	@Override
	public void removeTickObserver(TickObserver tickObserver) {
		if (tickObserver == null) { return; }
		_tickObservers.remove(tickObserver);
	}
}
