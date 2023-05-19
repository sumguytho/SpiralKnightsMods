package sumguytho.common;

import java.awt.EventQueue;
import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;
import java.util.Arrays;

import com.threerings.projectx.client.aC;
import com.threerings.projectx.client.chat.ProjectXChatDirector;
import com.threerings.projectx.util.A;
import com.threerings.util.N;

public class ModManagerImpl implements Mod, ModSharedResources, ModManager {
	public static String NAME = "modmanager";
	public static String VERSION = "1.0.0";

	private static ModManagerImpl _modRoot;
	
	private ModManagerImpl() { }
	
	public static ModManagerImpl get__Callback() {
		if (_modRoot == null) {
			_modRoot = new ModManagerImpl();
		}
		return _modRoot;
	}
	
	public void init__Callback() { initMods(); }
	
	private A _projxctx;
	private aC _hudwnd;
	private aC.a _hudwndsmth;
	private ProjectXChatDirector _chatdir;
	
	public void setProjXCtx__Callback(A ctx) { _projxctx = ctx; }
	public void setHUDWnd__Callback(aC hud) { _hudwnd = hud; }
	public void setHUDWndSmth__Callback(aC.a hudwndsmth) { _hudwndsmth = hudwndsmth; }
	public void setChatDir__Callback(ProjectXChatDirector chatDir) { _chatdir = chatDir; }
	
	@Override
	public void ctor(ModSharedResources res) {
        N msgbundle = _projxctx.getMessageManager().dI("chat");
        ModControlChatCommandHandler cmdhandler = new ModControlChatCommandHandler(_chatdir, new ModControl(this));
        _chatdir.a(msgbundle, "mods", cmdhandler);
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
	public void initialize() { }

	@Override
	public A getProjXCtx() { return _projxctx; }
	@Override
	public aC getHUDWnd() { return _hudwnd; }
	@Override
	public aC.a getHUDWndSmth() { return _hudwndsmth; }
	@Override
	public ProjectXChatDirector getChatDir() { return _chatdir; }
	
	private ArrayList<String> _modClasses = new ArrayList<String>( Arrays.asList("sumguytho.hudhider.HUDHider") );
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
				boolean can_init = mod.initializeReady();
				if (can_init) { mod.initialize(); }
				uninitialized_left = uninitialized_left || !can_init;
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
}
