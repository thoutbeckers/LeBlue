package houtbecke.rs.le;

public interface LeRemoteDeviceListener {

    void leDeviceConnected(LeDevice leDevice, LeRemoteDevice leRemoteDevice);

    void leDeviceDisconnected(LeDevice leDevice, LeRemoteDevice leRemoteDevice);

    void leDeviceClosed(LeDevice leDevice, LeRemoteDevice leRemoteDevice);

    void serviceDiscovered(LeDevice leDevice, LeRemoteDevice leRemoteDevice, LeGattService[] gatts, LeGattStatus status);
}
