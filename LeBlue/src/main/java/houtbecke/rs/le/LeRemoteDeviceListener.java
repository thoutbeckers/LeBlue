package houtbecke.rs.le;

public interface LeRemoteDeviceListener {

    void leDevicesConnected(LeDevice leDevice, LeRemoteDevice leRemoteDevice);

    void leDevicesDisconnected(LeDevice leDevice, LeRemoteDevice leRemoteDevice);

    void leDevicesClosed(LeDevice leDevice, LeRemoteDevice leRemoteDevice);

    void serviceDiscovered(LeDevice leDevice, LeRemoteDevice leRemoteDevice, LeGattStatus status, LeGattService[] gatts);

    void rssiRead(LeDevice leDevice, LeRemoteDevice leRemoteDevice,int rssi);

}
