package sumguytho.hudhider;

import com.threerings.projectx.client.aC;
import com.threerings.util.N;
import com.threerings.projectx.client.chat.ProjectXChatDirector;

import java.util.Iterator;

import sumguytho.common.Mod;
import sumguytho.common.ModManagerImpl;
import sumguytho.common.ModSharedResources;

public class HUDHider implements Mod {
	public static String NAME = "hudhider";
	public static String VERSION = "2.0.0";
	
	public static HUDHider get__Callback() {
		return (HUDHider)ModManagerImpl.get__Callback().getMod(NAME);
	}
	
	public void addHUDScript__Callback() {
		if (_isEnabled && _isHUDHidden) { hideHUD(); }
	}

	private ModSharedResources _res;
	private boolean _isEnabled = false;
	private boolean _wasInitialized = false;
	private boolean _isHUDHidden = false;
	
	@Override
	public void ctor(ModSharedResources res) {
		_res = res;
	}
	@Override
	public void initialize() {
        N msgbundle = _res.getProjXCtx().getMessageManager().dI("chat");
        ProjectXChatDirector chatdir = _res.getChatDir();
        chatdir.a(msgbundle, "hud", new HUDChatCommandHandler(chatdir, this));
        
        _isEnabled = true;
		_wasInitialized = true;
	}
	@Override
	public boolean initializeReady() {
		return _res.getHUDWndSmth() != null && _res.getChatDir() != null;
	}
	@Override
	public boolean wasInitialized() { return _wasInitialized; }
	@Override
	public void enable() { _isEnabled = true; }
	@Override
	public void disable() { showHUD(); _isEnabled = false; }

	@Override
	public boolean isEnabled() { return _isEnabled; }
	@Override
	public String getName() { return NAME; }
	@Override
	public String getVersion() { return VERSION; }
	
	public void hideHUD() { if (_isEnabled) { setComponentsVisible(_res.getHUDWndSmth(), false); } }
	public void showHUD() { if (_isEnabled) { setComponentsVisible(_res.getHUDWndSmth(), true); } }
	
	public void setComponentsVisible(aC.a hud, boolean value) {
		Iterator<String> componentsIter = hud.getTagged().keySet().iterator();
		while (componentsIter.hasNext()) {
			String comp = componentsIter.next();
			hud.getComponent(comp).setVisible(value);
		}
		_isHUDHidden = !value;
	}
	
	public boolean isHUDHidden() { return _isHUDHidden; }
}
