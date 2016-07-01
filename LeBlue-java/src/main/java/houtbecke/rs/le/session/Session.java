package houtbecke.rs.le.session;

public interface Session {

    Mocker getGattCharacteristicMocker(int id);
    Mocker getGattServiceMocker(int id);
    Mocker getDeviceMocker(int id);
    Mocker getRemoteDeviceMocker(int id);
    EventSource getDefaultSource();
    EventSource getNamedEventSource(String source);
    String[] getEventSourceNames();

    String getSourceIdentification(int source);

    void setSourceIdentification(int source, String identification);
}
