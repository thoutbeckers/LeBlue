package houtbecke.rs.le;

import java.util.UUID;

public class LeDefinedUUIDs {
	
	public static class Service {
		final static public UUID HEART_RATE               = UUID.fromString("0000180d-0000-1000-8000-00805f9b34fb");
		final static public UUID CYCLING_POWER               = UUID.fromString("00001818-0000-1000-8000-00805f9b34fb");
        final static public UUID CYCLING_SPEED_AND_CADENCE   = UUID.fromString("00001816-0000-1000-8000-00805f9b34fb");
		final static public UUID RUNNING_SPEED_AND_CADENCE   = UUID.fromString("00001814-0000-1000-8000-00805f9b34fb");


		final static public UUID BATTERY   = UUID.fromString("0000180f-0000-1000-8000-00805f9b34fb");
        final static public UUID DEVICE_INFORMATION   = UUID.fromString("0000180a-0000-1000-8000-00805f9b34fb");
		final static public UUID GENERIC_ATTRIBUTE   = UUID.fromString("00001801-0000-1000-8000-00805f9b34fb");


    }
	
	public static class Characteristic {
		final static public UUID HEART_RATE_MEASUREMENT   = UUID.fromString("00002a37-0000-1000-8000-00805f9b34fb");
		final static public UUID MANUFACTURER_STRING      = UUID.fromString("00002a29-0000-1000-8000-00805f9b34fb");
		final static public UUID MODEL_NUMBER_STRING      = UUID.fromString("00002a24-0000-1000-8000-00805f9b34fb");
		final static public UUID SERIAL_NUMBER_STRING      = UUID.fromString("00002a25-0000-1000-8000-00805f9b34fb");
		final static public UUID FIRMWARE_REVISION_STRING = UUID.fromString("00002a26-0000-1000-8000-00805f9b34fb");
		final static public UUID HARDWARE_REVISION_STRING = UUID.fromString("00002a27-0000-1000-8000-00805f9b34fb");
		final static public UUID APPEARANCE               = UUID.fromString("00002a01-0000-1000-8000-00805f9b34fb");
		final static public UUID BODY_SENSOR_LOCATION     = UUID.fromString("00002a38-0000-1000-8000-00805f9b34fb");
		final static public UUID BATTERY_LEVEL            = UUID.fromString("00002a19-0000-1000-8000-00805f9b34fb");
		final static public UUID CYCLING_POWER_MEASUREMENT   = UUID.fromString("00002a63-0000-1000-8000-00805f9b34fb");
        final static public UUID CYCLING_POWER_CONTROL_POINT = UUID.fromString("00002a66-0000-1000-8000-00805f9b34fb");
        final static public UUID CSC_MEASUREMENT             = UUID.fromString("00002a5b-0000-1000-8000-00805f9b34fb");
		final static public UUID SERVICE_CHANGED             = UUID.fromString("00002a05-0000-1000-8000-00805f9b34fb");

	}
	
	public static class Descriptor {
		final static public UUID CHAR_CLIENT_CONFIG       = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");
	}
	
}
