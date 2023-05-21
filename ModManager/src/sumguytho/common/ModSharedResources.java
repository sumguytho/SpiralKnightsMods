package sumguytho.common;

import com.threerings.projectx.util.A;
import com.threerings.projectx.client.aC;
import com.threerings.projectx.client.chat.ProjectXChatDirector;

public interface ModSharedResources {
	A getProjXCtx();
	aC getHUDWnd();
	aC.a getHUDWndSmth();
	ProjectXChatDirector getChatDir();
	void addTickObserver(TickObserver tickObserver);
	void removeTickObserver(TickObserver tickObserver);
}
