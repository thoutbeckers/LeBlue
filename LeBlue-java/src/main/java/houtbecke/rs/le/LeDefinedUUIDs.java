package houtbecke.rs.le;

import java.util.UUID;

public class LeDefinedUUIDs {
	
	public static class Service {
		final static public UUID HEART_RATE               = UUID.fromString("0000180d-0000-1000-8000-00805f9b34fb");
		final static public UUID CYCLING_POWER               = UUID.fromString("00001818-0000-1000-8000-00805f9b34fb");
        final static public UUID CYCLING_SPEED_AND_CADENCE   = UUID.fromString("00001816-0000-1000-8000-00805f9b34fb");
		final static public UUID RUNNING_SPEED_AND_CADENCE   = UUID.fromString("00001814-0000-1000-8000-00805f9b34fb");
		final static public UUID FITNESS_MACHINE   = UUID.fromString("00001826-0000-1000-8000-00805f9b34fb");
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
		final static public UUID SENSOR_LOCATION       = UUID.fromString("00002a5d-0000-1000-8000-00805f9b34fb");
		final static public UUID CYCLING_POWER_MEASUREMENT   = UUID.fromString("00002a63-0000-1000-8000-00805f9b34fb");
		final static public UUID CYCLING_POWER_VECTOR  = UUID.fromString("00002a64-0000-1000-8000-00805f9b34fb");
		final static public UUID CYCLING_POWER_FEATURE   = UUID.fromString("00002a65-0000-1000-8000-00805f9b34fb");
        final static public UUID CYCLING_POWER_CONTROL_POINT = UUID.fromString("00002a66-0000-1000-8000-00805f9b34fb");
        final static public UUID CSC_MEASUREMENT             = UUID.fromString("00002a5b-0000-1000-8000-00805f9b34fb");
		final static public UUID SERVICE_CHANGED             = UUID.fromString("00002a05-0000-1000-8000-00805f9b34fb");
		final static public UUID FITNESS_MACHINE_FEATURE      = UUID.fromString("00002acc-0000-1000-8000-00805f9b34fb");
		final static public UUID INDOOR_BIKE_DATA             = UUID.fromString("00002ad2-0000-1000-8000-00805f9b34fb");
		final static public UUID TRAINING_STATUS              = UUID.fromString("00002ad3-0000-1000-8000-00805f9b34fb");
		final static public UUID SUPPORTED_SPEED_RANGE        = UUID.fromString("00002ad4-0000-1000-8000-00805f9b34fb");
		final static public UUID SUPPORTED_INCLINATION_RANGE  = UUID.fromString("00002ad5-0000-1000-8000-00805f9b34fb");
		final static public UUID SUPPORTED_RESISTANCE_LEVEL_RANGE  = UUID.fromString("00002ad6-0000-1000-8000-00805f9b34fb");
		final static public UUID SUPPORTED_HEART_RATE_RANGE   = UUID.fromString("00002ad7-0000-1000-8000-00805f9b34fb");
		final static public UUID SUPPORTED_POWER_RANGE        = UUID.fromString("00002ad8-0000-1000-8000-00805f9b34fb");
		final static public UUID FITNESS_MACHINE_CONTROL_POINT = UUID.fromString("00002ad9-0000-1000-8000-00805f9b34fb");
		final static public UUID FITNESS_MACHINE_STATUS       = UUID.fromString("00002ada-0000-1000-8000-00805f9b34fb");
	}
	
	public static class Descriptor {
		final static public UUID CHAR_CLIENT_CONFIG       = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");
	}
	
}
