package houtbecke.rs.le;

import java.util.UUID;

public interface LeRemoteDevice {

    void addListener(LeRemoteDeviceListener listener);

    void removeListener(LeRemoteDeviceListener listener);

    String getAddress();

    void connect();

    void disconnect();

    void close();

    void startServicesDiscovery();

    void setCharacteristicListener(LeCharacteristicListener listener, UUID... uuids);

    String getName();
}
