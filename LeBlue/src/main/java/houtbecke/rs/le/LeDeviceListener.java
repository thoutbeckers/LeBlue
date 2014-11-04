package houtbecke.rs.le;

public interface LeDeviceListener {

    void leDeviceFound(LeDevice leDevice, LeRemoteDevice leRemoteDevice, int rssi, LeScanRecord scanRecord);

    void leDeviceState(LeDevice leDevice,LeDeviceState leDeviceState);


}
