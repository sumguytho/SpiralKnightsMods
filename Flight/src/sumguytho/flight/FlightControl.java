package sumguytho.flight;

import java.util.ArrayList;
import java.util.List;

import com.threerings.math.Vector2f;

public class FlightControl {
	private Flight _flight;
	
	FlightControl(Flight flight){
		_flight = flight;
	}
	
	private String needToEndableMod() {
		return "You need to enable mod for it to work though";
	}
	
	public List<String> setSpeed(float newSpeed) {
		List<String> res = new ArrayList<String>();
		_flight.setSpeed(newSpeed);
		res.add(String.format("Speed has been set to %.2f", newSpeed));
		if (!_flight.isEnabled()) { res.add(needToEndableMod()); }
		return res;
	}

	public List<String> getSpeed() {
		List<String> res = new ArrayList<String>();
		float cur_speed = _flight.getSpeed();
		res.add(String.format("Current speed is %.2f", cur_speed));
		return res;
	}
	
	public List<String> resetSpeed() {
		List<String> res = new ArrayList<String>();
		_flight.resetSpeed();
		res.add("Speed has been reset");
		if (!_flight.isEnabled()) { res.add(needToEndableMod()); }
		return res;
	}

	public List<String> setPosition(Vector2f newPosition) {
		List<String> res = new ArrayList<String>();
		_flight.setPosition(newPosition);
		res.add(String.format("Position has been set to %.2f;%.2f", newPosition.x, newPosition.y));
		if (!_flight.isEnabled()) { res.add(needToEndableMod()); }
		return res;
	}
	
	public List<String> getPosition() {
		List<String> res = new ArrayList<String>();
		Vector2f cur_position = _flight.getPosition();
		res.add(String.format("Current position is %.2f;%.2f", cur_position.x, cur_position.y));
		return res;
	}
	
	public List<String> resetPosition() {
		List<String> res = new ArrayList<String>();
		_flight.resetPosition();
		res.add("Position has been reset");
		if (!_flight.isEnabled()) { res.add(needToEndableMod()); }
		return res;
	}
	
	public List<String> getInfo(){
		List<String> res = getPosition();
		res.addAll(getSpeed());
		return res;
	}
}
