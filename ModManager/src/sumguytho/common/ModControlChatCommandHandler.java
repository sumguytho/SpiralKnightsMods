package sumguytho.common;

import com.threerings.projectx.client.chat.ProjectXChatDirector;
import com.threerings.crowd.chat.client.m;
import com.threerings.crowd.chat.client.a.c;

import java.util.StringTokenizer;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

public class ModControlChatCommandHandler extends c {
	private static final String loopbackBundle = LoopbackMessageBundle.NAME;

	private ProjectXChatDirector _chatdir;
	private ModControl _modctrl;
	
	public ModControlChatCommandHandler(ProjectXChatDirector chatdir, ModControl modctrl) {
		_chatdir = chatdir;
		_modctrl = modctrl;
	}
	
	private String helpString() {
		return "/mods [list] [enable/disable/list <mod_name>] - mod management util";
	}
	
	@Override
    public final String a(m somethingOfTypem, String cmd, String args, String[] stringArrayOfSomething) {
		StringTokenizer izer = new StringTokenizer(args);
		List<String> result = new ArrayList<String>();

		try { subcommand(izer.nextToken(), izer, result); }
		catch(NoSuchElementException e) { result.add(helpString()); }
		
		for (String s : result) {
			_chatdir.i(loopbackBundle, s);
		}
		return "success";
	}
	
	// perhaps i could use a lex parser
	private void subcommand(String name, StringTokenizer izer, List<String> result) {
		switch(name) {
		case "enable": { enable(izer.nextToken(), izer, result); } break;
		case "disable": { disable(izer.nextToken(), izer, result); } break;
		case "list": { list(izer, result); } break;
		default:{ result.add(helpString()); }
		}
	}
	private void enable(String name, StringTokenizer izer, List<String> result) { result.addAll(_modctrl.enable(name)); }
	private void disable(String name, StringTokenizer izer, List<String> result) { result.addAll(_modctrl.disable(name)); }
	private void list(StringTokenizer izer, List<String> result) {
		if (!izer.hasMoreTokens()) {
			result.addAll( _modctrl.getModsStatus() );
			return;
		}
		String modName = izer.nextToken();
		result.addAll(_modctrl.getModStatus(modName));
	}
}
