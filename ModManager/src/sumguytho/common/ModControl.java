package sumguytho.common;

import java.util.ArrayList;
import java.util.List;

public class ModControl {
	private ModManager _modmgr;

	ModControl(ModManager modmgr){
		_modmgr = modmgr;
	}

	
	private String loadedModsString() {
		return "Loaded mods:";
	}
	private String missingModsString() {
		return "Following mod classes couldn't be found:";
	}
	private String modNotFoundString(String modName) {
		return String.format("There is no mod named %s", modName);
	}
	private String makeModString(Mod mod) {
		return String.format("[%c] %s v%s%s",
				(mod.isEnabled() ? 'v' : 'x'),
				mod.getName(),
				mod.getVersion(),
				(mod.initializeReady() ? "" : " (can't be initialized yet)"));
	}
	private String modEnableSuccessString(String modName) {
		return String.format("Successfully enabled mod %s", modName);
	}
	private String modDisableSuccessString(String modName) {
		return String.format("Successfully disabled mod %s", modName);
	}
	private String modEnableFailureString(String modName) {
		return String.format("Couldn't enable mod %s", modName);
	}
	private String modDisableFailureString(String modName) {
		return String.format("Couldn't disable mod %s", modName);
	}

	
	public List<String> getModStatus(String modName) {
		List<String> result = new ArrayList<String>();
		Mod mod = _modmgr.getMod(modName);
		if (mod == null) { result.add( modNotFoundString(modName) ); }
		else {
			result.add( loadedModsString() );
			result.add( makeModString(mod) );
		}
		return result;
	}
	
	public List<String> getModsStatus() {
		List<String> result = new ArrayList<String>();
		result.add(loadedModsString());
		for (Mod mod : _modmgr.getMods()) {
			result.add(makeModString(mod));
		}
		List<String> missingClassNames = _modmgr.getMissingClassNames();
		if (!missingClassNames.isEmpty()) {
			result.add(missingModsString());
			result.addAll(missingClassNames);
		}
		return result;
	}


	private interface modManipCallable {
		String call(Mod mod);
	}
	

	public List<String> enable(String modName) {
		return modManip(modName, mod -> {
			mod.enable();
			if (mod.isEnabled()) {
				return modEnableSuccessString(modName);
			}
			return modEnableFailureString(modName);
		});
	}

	public List<String> disable(String modName) {
		return modManip(modName, mod -> {
			mod.disable();
			if (!mod.isEnabled()) {
				return modDisableSuccessString(modName);
			}
			return modDisableFailureString(modName);
		});
	}


	private List<String> modManip(String modName, modManipCallable action) {
		List<String> result = new ArrayList<String>();
		Mod mod = _modmgr.getMod(modName);

		if (mod == null) { result.add( modNotFoundString(modName) ); }
		else { result.add( action.call(mod) ); }

		return result;
	}
}
