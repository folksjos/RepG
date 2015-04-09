package replicatorg.drivers.commands;

import replicatorg.drivers.Driver;

public class DisableMistCoolant implements DriverCommand {
	@Override
	public void run(Driver driver) {
		driver.disableMistCoolant();
	}
}
