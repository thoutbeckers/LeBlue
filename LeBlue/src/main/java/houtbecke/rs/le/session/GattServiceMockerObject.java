package houtbecke.rs.le.session;

import java.util.UUID;

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

    public GattServiceMockerObject hasCharacteristic(int characteristic, String uuid) {
        sessionObject.setSourceIdentification(characteristic, uuid);
        withMock(serviceGetCharacteristic, uuid, 0, characteristic+"");
        return this;
    }


}
