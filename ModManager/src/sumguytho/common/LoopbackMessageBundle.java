package sumguytho.common;

import com.threerings.util.L;

public class LoopbackMessageBundle extends L {
	public static final String NAME = "loopback";
	@Override
	public final String m(String message, boolean logErr) { return message == null ? "" : message; }
}
