package sumguytho.flight;

import com.threerings.crowd.chat.client.a.c;
import com.threerings.math.Vector2f;

import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;

import com.threerings.crowd.chat.client.m;
import com.threerings.projectx.client.chat.ProjectXChatDirector;

import sumguytho.common.LoopbackMessageBundle;

public class FlightChatCommandHandler extends c {
	private static final String loopbackBundle = LoopbackMessageBundle.NAME;
	private ProjectXChatDirector _chatdir;
	private FlightControl  _flightctrl;
	
	FlightChatCommandHandler(ProjectXChatDirector chatdir, FlightControl flightctrl){
		_chatdir = chatdir;
		_flightctrl = flightctrl;
	}
	
	private String helpString() {
		return "/flight [info] [get/set position <float>;<float>] [get/set speed <float>] [reset speed/position] - manage flight parameters, "
				+ "use arrows to control the character, command examples: [set position 1.23;3] [set speed 0.30000001]";
	}

	@Override
    public final String a(m somethingOfTypem, String cmd, String args, String[] stringArrayOfSomething) {
		StringTokenizer izer = new StringTokenizer(args);
		List<String> result = new ArrayList<String>();

		try { subcommand(izer.nextToken(), izer, result); }
		catch(NoSuchElementException e) { result.add(helpString()); }
		catch(NumberFormatException e) { result.add(helpString()); }
		
		for (String s : result) {
			_chatdir.i(loopbackBundle, s);
		}
		return "success";
	}
	
	private void subcommand(String name, StringTokenizer izer, List<String> result) {
		switch(name) {
		case "info": { result.addAll( _flightctrl.getInfo() ); } break;
		case "get": { get(izer.nextToken(), izer, result); } break;
		case "set": { set(izer.nextToken(), izer, result); } break;
		case "reset": { reset(izer.nextToken(), izer, result); } break;
		default:{ result.add(helpString()); }
		}
	}
	
	private void get(String name, StringTokenizer izer, List<String> result) {
		switch(name) {
		case "position": { result.addAll( _flightctrl.getPosition() ); } break;
		case "speed": { result.addAll( _flightctrl.getSpeed() ); } break;
		default:{ result.add(helpString()); }
		}
	}
	
	private void set(String name, StringTokenizer izer, List<String> result) {
		switch(name) {
		case "position": { result.addAll( _flightctrl.setPosition( parseVector2f(izer) ) ); } break; 
		case "speed": { result.addAll( _flightctrl.setSpeed( parseFloat(izer) ) ); } break;
		default:{ result.add(helpString()); }
		}
	}
	
	private void reset(String name, StringTokenizer izer, List<String> result) {
		switch(name) {
		case "position": { result.addAll( _flightctrl.resetPosition()); } break; 
		case "speed": { result.addAll( _flightctrl.resetSpeed() ); } break;
		default:{ result.add(helpString()); }
		}
	}
	
	private Vector2f parseVector2f(StringTokenizer izer) {
		float x = Float.parseFloat(izer.nextToken("; "));
		float y = Float.parseFloat(izer.nextToken("; "));
		return new Vector2f(x, y);
	}
	
	private float parseFloat(StringTokenizer izer) {
		return Float.parseFloat(izer.nextToken());
	}
}
