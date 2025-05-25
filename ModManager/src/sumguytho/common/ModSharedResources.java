package sumguytho.common;

import com.threerings.projectx.util.A;
import com.threerings.projectx.client.aD;
import com.threerings.projectx.client.chat.ProjectXChatDirector;

public interface ModSharedResources {
	A getProjXCtx();
	aD getHUDWnd();
	aD.a getHUDWndRoot();
	ProjectXChatDirector getChatDir();
	void addTickObserver(TickObserver tickObserver);
	void removeTickObserver(TickObserver tickObserver);
}
