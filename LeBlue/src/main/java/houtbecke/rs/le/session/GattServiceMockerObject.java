package houtbecke.rs.le.session;

import java.util.UUID;

import static houtbecke.rs.le.session.EventType.mockCharacteristicNotificationChanged;
import static houtbecke.rs.le.session.EventType.mockRemoteDeviceClosed;
import static houtbecke.rs.le.session.EventType.remoteDeviceClose;
import static houtbecke.rs.le.session.EventType.serviceEnableCharacteristicNotification;
import static houtbecke.rs.le.session.EventType.serviceGetCharacteristic;
import static houtbecke.rs.le.session.EventType.serviceGetUUID;

public class GattServiceMockerObject extends MockerObject {
    public GattServiceMockerObject(SessionObject sessionObject, int sessionSource) {
        super(sessionObject, sessionSource);
    }

    public GattServiceMockerObject mocksService(UUID uuid) {
        withMock(serviceGetUUID, uuid.toString());
      return this;
    }

    public GattServiceMockerObject hasCharacteristic(int characteristic) {
        return hasCharacteristic(characteristic, sessionObject.getSourceIdentification(characteristic));
    }

    public GattServiceMockerObject hasCharacteristic(int characteristic, UUID uuid) {
        return hasCharacteristic(characteristic, uuid.toString());
    }

    public GattServiceMockerObject hasCharacteristic(int characteristicId, String uuid) {
        sessionObject.setSourceIdentification(characteristicId, uuid);
        withMock(serviceGetCharacteristic, uuid, 0, characteristicId + "");
        return this;
    }

    public GattServiceMockerObject canNotify(int characteristic,int remoteId,  Boolean enable) {
        return canNotify(characteristic,remoteId, sessionObject.getSourceIdentification(characteristic),enable.toString());
    }

    public GattServiceMockerObject canNotify(int characteristic, UUID uuid,int remoteId,Boolean enable) {
        return canNotify(characteristic,remoteId, uuid.toString(),enable.toString());
    }

    public GattServiceMockerObject canNotify(int characteristicId,int remoteId, String uuid,String enable) {
        sessionObject.setSourceIdentification(characteristicId, uuid);

        withMock(serviceEnableCharacteristicNotification, new MockedResponseObject(new Event(mockCharacteristicNotificationChanged, getDelay(), sessionSource, characteristicId+"", uuid.toString(), remoteId+"", enable)));

        return this;
    }


}
