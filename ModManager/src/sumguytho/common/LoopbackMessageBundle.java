package sumguytho.common;

import com.threerings.util.N;

public class LoopbackMessageBundle extends N {
	public static final String NAME = "loopback";
	@Override
	public final String m(String message, boolean logErr) { return message == null ? "" : message; }
}
