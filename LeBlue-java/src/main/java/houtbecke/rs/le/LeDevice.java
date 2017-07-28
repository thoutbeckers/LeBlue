package houtbecke.rs.le;

import java.util.List;
import java.util.UUID;

public interface LeDevice {
    /**
     * Add a listener for getting updates on LE devices
     *
     * @param listener the listener to add
     */
    void addListener(LeDeviceListener listener);

    /**
     * Remove a listener for getting updates on LE devices
     *
     * @param listener the listener to remove
     */
    void removeListener(LeDeviceListener listener);

    /**
     * Run test and check if this device has BT and BLE hardware available
     *
     * @return true if BLE is available
     */
    boolean checkBleHardwareAvailable();

    /**
     * Test if Bluetooth is enabled
     *
     * @return true if Bluetooth is on
     */
    boolean isBtEnabled();

    /**
     * Scan for Bluetooth LE devices nearby
     */
    void startScanning();

    /**
     * Scan for Bluetooth devices of certain types
     *
     * @param uuids the uuids of device types
     */
    void startScanning(UUID... uuids);

    void startScanning(List<List<UUID>> filters);

        /**
         * Stop scanning for Bluetooth LE devices nearby
         */
    void stopScanning();


    void setErrorLogger(ErrorLogger errorLogger);

    void disable();
    void enable();

}
