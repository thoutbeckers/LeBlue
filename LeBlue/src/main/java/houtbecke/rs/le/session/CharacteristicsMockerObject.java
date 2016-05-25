package houtbecke.rs.le.session;

import java.util.UUID;

import houtbecke.rs.le.LeUtil;

import static houtbecke.rs.le.session.LeEventType.characteristicGetValue;

public class CharacteristicsMockerObject extends MockerObject {
    public CharacteristicsMockerObject(SessionObject sessionObject, int sessionSource) {
        super(sessionObject, sessionSource);
    }

    public CharacteristicsMockerObject mocksCharacteristic() {
        return mocksCharacteristic(sessionObject.getSourceIdentification(sessionSource));
    }

    public CharacteristicsMockerObject mocksCharacteristic(UUID uuid) {
        return mocksCharacteristic(uuid.toString());
    }

    public CharacteristicsMockerObject mocksCharacteristic(String uuid) {
        sessionObject.setSourceIdentification(sessionSource, uuid);
        return this;
    }

    public CharacteristicsMockerObject hasFixedValue(int... values) {
        return hasFixedValue(LeUtil.intsToBytes(values));
    }

    public CharacteristicsMockerObject hasFixedValue(byte[] values) {
        withMock(characteristicGetValue, LeUtil.bytesToString(values));
        return this;
    }

    public CharacteristicsMockerObject hasValue(int... values) {
        return hasValue(LeUtil.intsToBytes(values));
    }

    public CharacteristicsMockerObject hasValue(byte[] values) {
        withSelfDestroyingMock(characteristicGetValue, LeUtil.bytesToString(values));
        return this;
    }

    public CharacteristicsMockerObject hasValues(byte[]... multipleValues) {
        for (byte[] values: multipleValues)
            hasValue(values);
        return this;
    }

}
