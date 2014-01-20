package houtbecke.rs.le;

public interface LeDeviceListener {

    void leDeviceFound(LeDevice leDevice, LeRemoteDevice remoteDevice, int rssi, byte[] scanRecord);

}
