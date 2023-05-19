package sumguytho.common;

import java.util.List;

public interface ModManager {
	void initMods();
	List<Mod> getMods();
	Mod getMod(String name);
	List<String> getMissingClassNames();
}
