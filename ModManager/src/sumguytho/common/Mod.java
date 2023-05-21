package sumguytho.common;

public interface Mod {
	void ctor(ModSharedResources res);
	void initialize();
	boolean initializeReady();
	boolean wasInitialized();
	void enable();
	void disable();
	boolean isEnabled();
	String getName();
	String getVersion();
}
