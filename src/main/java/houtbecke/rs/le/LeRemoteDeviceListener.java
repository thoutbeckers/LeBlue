package houtbecke.rs.le;

public interface LeRemoteDeviceListener {

    void leDeviceConnected(LeDevice leDevice, LeRemoteDevice remoteDevice);

    void leDeviceDisconnected(LeDevice leDevice, LeRemoteDevice device);

    void leDeviceClosed(LeDevice leDevice, LeRemoteDevice device);

    void serviceDiscovered(LeDevice leDevice, LeRemoteDevice leRemoteDevice, LeGattService[] gatts, LeGattStatus status);
}
