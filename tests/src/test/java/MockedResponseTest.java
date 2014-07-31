import org.junit.Test;

import houtbecke.rs.le.session.MockedResponseObject;

public class MockedResponseTest {
    @Test
    public void testMockedResponse() {
        MockedResponseObject mr = new MockedResponseObject(new String[0]);
        assert mr.isForArguments(null);
        assert mr.isForArguments(new String[0]);
        assert mr.isForArguments(new String[]{"merp"});


        mr.forArguments("merp", 0);
        assert mr.isForArguments(new String[]{"merp"});
        assert !mr.isForArguments(new String[]{"herp"});
        assert !mr.isForArguments(new String[]{null});

        mr.forArguments(null, 0);
        assert mr.isForArguments(new String[]{null});
        assert !mr.isForArguments(new String[]{"merp"});

        mr.forArguments("merp", 1);
        assert !mr.isForArguments(new String[]{"merp"});
        assert mr.isForArguments(new String[]{null, "merp"});

        mr.destroyAfterUse();

        assert mr.isSelfDestroying();

    }

}
