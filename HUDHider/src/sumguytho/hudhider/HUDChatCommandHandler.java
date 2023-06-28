package sumguytho.hudhider;

import com.threerings.crowd.chat.client.a.c;
import com.threerings.crowd.chat.client.m;
import com.threerings.projectx.client.chat.ProjectXChatDirector;

import sumguytho.common.LoopbackMessageBundle;

public class HUDChatCommandHandler extends c {
	private static final String loopbackBundle = LoopbackMessageBundle.NAME;
	private ProjectXChatDirector _chatdir;
	private HUDHider _hudhider;
	
	HUDChatCommandHandler(ProjectXChatDirector chatdir, HUDHider hudhider){
		_chatdir = chatdir;
		_hudhider = hudhider;
	}
	
	private String helpString() {
		return "/hud [show/hide]";
	}
	private String actionString(String action) {
		return String.format("HUD had been %s", action);
	}

	@Override
    public final String a(m somethingOfTypem, String cmd, String args, String[] stringArrayOfSomething) {
		if (!_hudhider.isEnabled()) {
			_chatdir.i( loopbackBundle, "You must enable mod first" );
			return "success";
		}
		if (args.equals("show")) {
			_hudhider.showHUD();
			_chatdir.i( loopbackBundle, actionString("shown") );
		}
		else if (args.equals("hide")) {
			_hudhider.hideHUD();
			_chatdir.i( loopbackBundle, actionString("hidden") );
		}
		else {
			_chatdir.i( loopbackBundle, helpString() );
		}
		return "success";
	}
}
