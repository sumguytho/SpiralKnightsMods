package sumguytho.common;

import com.threerings.util.MessageBundle;

public class LoopbackMessageBundle extends MessageBundle {
	public static final String NAME = "loopback";
	@Override
	public final String m(String message, boolean logErr) { return message == null ? "" : message; }
}
